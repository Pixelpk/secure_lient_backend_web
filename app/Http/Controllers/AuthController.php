<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Password;
use Carbon\Carbon;
use App\User;
use App\Otp;
use App\CompanyDetail;
use App\Subscribe;
use Illuminate\Support\Facades\URL;
use DateTime;
use net\authorize\api\contract\v1 as AnetAPI;
use net\authorize\api\controller as AnetController;

class AuthController extends Controller
{
    public function signup(Request $request)
    {
        // return $request->all();
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'email' => 'required|string|email|unique:users',
            'password' => 'required|string|confirmed',
            'industry' => 'required|string',
        ]);
        if ($validator->fails()) {
            return  response()->json([
                'status' => FALSE,
                'message' => 'Something went wrong!',
                'errors' => $validator->errors()
            ]);
        }

        $user = new User([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'industry' => $request->industry,
        ]);
        $user->save();
        if ($user) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully created your account!'
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Something went wrong!'
            ], 200);
        }
    }

    public function login(Request $request)
    {
        // $request->validate([
        //     'email' => 'required|string|email',
        //     'password' => 'required|string',
        // ]);

        if(request('email') == ''){
            return response()->json(["status" => FALSE, "message" => 'Email is required'], 200);
        }elseif(request('password') == ''){
            return response()->json(["status" => FALSE, "message" => 'Password is required'], 200);
        }

        $credentials = request(['email', 'password']);
        if(!Auth::attempt($credentials)) {
            return response()->json(["status" => FALSE, "message" => 'The email or password is incorrect'], 200);
        }
        // check subscription
        $getuser = User::with('subscriptionDetail')->where('email', request('email'))->first();
        if ($getuser->subscriptionDetail != null) {
            $subscriptionId = $getuser->subscriptionDetail->sub_id;

            $merchantAuthentication = new AnetAPI\MerchantAuthenticationType();
            $merchantAuthentication->setName(env('MERCHANT_LOGIN_ID'));
            $merchantAuthentication->setTransactionKey(env('MERCHANT_TRANSACTION_KEY'));

            // Set the transaction's refId
            $refId = 'ref' . time();

            $request_sub = new AnetAPI\ARBGetSubscriptionStatusRequest();
            $request_sub->setMerchantAuthentication($merchantAuthentication);
            $request_sub->setRefId($refId);
            $request_sub->setSubscriptionId($subscriptionId);

            $controller = new AnetController\ARBGetSubscriptionStatusController($request_sub);

            $response = $controller->executeWithApiResponse( \net\authorize\api\constants\ANetEnvironment::SANDBOX);
            if ($response->getMessages()->getResultCode() == 'Error') {
                $subscribe = Subscribe::where('sub_id', $subscriptionId)->first();
                $subscribe->status = 0;
                $getuser->status = 'user';
                $getuser->save();
                $subscribe->save();
                return response()->json([
                    'status' => false,
                    'message' => 'Subscription end. ',
                    'user' => $getuser,
                ]);
            }
        }

        $user = $request->user();
        $user->load('subscriptionDetail');
        $tokenResult = $user->createToken('Personal Access Token');
        $token = $tokenResult->token;
        if ($request->remember_me)
            $token->expires_at = Carbon::now()->addWeeks(1);
        $token->save();
        return response()->json([
            'status' => TRUE,
            'message' => 'Login success',
            'user' => $user,
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'expires_at' => Carbon::parse(
                $tokenResult->token->expires_at
            )->toDateTimeString()
        ]);
    }

    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        return response()->json(["status" => TRUE, 'message' => 'Successfully logged out'], 200);
    }

    // public function forgot(Request $request) {
    //     $credentials = request()->validate(['email' => 'required|email']);
    //     $user = User::where('email', '=', $request->email)->first();
    //     if ($user === null) {
    //         return response()->json(["status" => 200, "error" => 'Please signup first'], 200);
    //     }else{
    //         Password::sendResetLink($credentials);
    //         return response()->json(["status" => 200, "message" => 'Reset password link sent on your email'], 200);
    //     }


    // }

    public function forgot(Request $request) {

        if($request->email == null){

            return response()->json(['status' => FALSE, 'message' => 'Email is required'], 200);

        }else{

            $user = User::where('email', '=', $request->email)->first();

            if (!$user) {

                return response()->json(['status' => FALSE, "message" => 'Please signup first']);

            }else{

                $opt = rand(100000,999999);

                $details = [

                    'title' => 'Secure Lien Release Password Reset',

                    'body' => 'Your OTP Code : '.$opt,

                ];

                $save_otp = new Otp([

                    'email' => $request->email,

                    'otp' => $opt

                ]);

                $save_otp->save();

                \Mail::to($request->email)->send(new \App\Mail\ForgotMail($details));

                return response()->json(['status' => TRUE, 'message' => 'Reset OTP sent on your email'], 200);

            }

        }

    }


    public function reset(Request $request) {

        $check = Otp::where('email', $request->email)->where('otp', $request->otp)->latest()->first();
        if ($check) {
            $check->delete();
            return response()->json(["status" => true, 'message' => 'Scuccessfully verify']);

        }else{

            return response()->json(["status" => false, 'message' => 'Incorrect OTP']);

        }

    }


    public function resetPassword(Request $request) {

        $user = User::where('email' ,$request->email)->first();

        if($user){

            $password = bcrypt($request->password);

            $user->password = $password;

            $user->save();

            return response()->json(["status" => TRUE,"message" => "Password has been successfully changed"]);

        }else{

            return response()->json(["status" => FALSE,"message" => "Something went wrong"]);

        }

    }

    public function getCompanyProfile(Request $request)
    {
        $id = $request->user()->id;
        $company_detail = CompanyDetail::where('user_id', $id)->first();
        if ($company_detail) {
            $company_detail->file_url = URL::to('/public/uploads/'.$company_detail->file_url);
            return response()->json([
                "status" => TRUE,
                "message" => "Company profile fetch successfully",
                'data' => $company_detail
            ]);
        }else{
            return response()->json([
                "status" => FALSE,
                "message" => "Company profile not fetch successfully",
                'data' => $company_detail
            ]);
        }
    }

    public function updateProfile(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password' => 'required|string',
        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }
        $id = $request->user()->id;

        $user = User::find($id);

        if($user){

            $password = bcrypt($request->password);

            $user->password = $password;

            $user->save();

            return response()->json(["status" => TRUE,"message" => "Profile update successfully"]);

        }else{

            return response()->json(["status" => FALSE,"message" => "Something went wrong"]);

        }
    }

    public function companyCreate(Request $request)
    {
        // dd($request->all());

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'city' => 'required',
            'state' => 'required',
            'county' => 'required',
            'postal_code' => 'required',
            'file_url' => 'required',
        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }
        $id = $request->user()->id;

        if(isset($_FILES['file_url'])){
            $filename = date("Ymd-his") . '.' . $_FILES['file_url']['name'];
            $destinationPath = public_path("uploads/" . $filename);
            move_uploaded_file($_FILES['file_url']['tmp_name'], $destinationPath);
            if (file_exists($destinationPath)){
                $file_url = $filename;
            }
        }

        $company_detail = new CompanyDetail([
            'user_id' => $id,
            'name' => $request->name,
            'phone' => $request->phone,
            'address' => $request->address,
            'city' => $request->city,
            'state' => $request->state,
            'county' => $request->county,
            'postal_code' => $request->postal_code,
            'file_url' => $file_url,
        ]);
        $company_detail->save();

        if($company_detail){

            return response()->json(["status" => TRUE,"message" => "Company profile created successfully"]);

        }else{

            return response()->json(["status" => FALSE,"message" => "Something went wrong"]);

        }
    }

    public function companyUpdate(Request $request)
    {
        // dd($request->all());

        $id = $request->user()->id;
        if (CompanyDetail::where('user_id', $id)->exists()) {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'phone' => 'required',
                'address' => 'required',
                'city' => 'required',
                'state' => 'required',
                'county' => 'required',
                'postal_code' => 'required',
            ]);
            if ($validator->fails()) {
                return  response()->json(['errors' => $validator->errors()]);
            }

            $id = $request->user()->id;
            $company_detail = CompanyDetail::where('user_id', $id)->first();

            if(isset($_FILES['file_url'])){
                unlink(public_path().'/uploads/'.$company_detail->file_url);

                $filename = date("Ymd-his") . '.' . $_FILES['file_url']['name'];
                $destinationPath = public_path("uploads/" . $filename);
                move_uploaded_file($_FILES['file_url']['tmp_name'], $destinationPath);
                if (file_exists($destinationPath)){
                    $file_url = $filename;
                }
            }else{
                $file_url = $company_detail->file_url;
            }

            if($company_detail){
                $company_detail->name = $request->name;
                $company_detail->phone = $request->phone;
                $company_detail->address = $request->address;
                $company_detail->city = $request->city;
                $company_detail->state = $request->state;
                $company_detail->county = $request->county;
                $company_detail->postal_code = $request->postal_code;
                $company_detail->file_url = $file_url;
                $company_detail->save();
                return response()->json(["status" => TRUE,"message" => "Company profile updated successfully"]);
            }else{
                return response()->json(["status" => FALSE,"message" => "Something went wrong"]);
            }
        }else{
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'phone' => 'required',
                'address' => 'required',
                'city' => 'required',
                'state' => 'required',
                'county' => 'required',
                'postal_code' => 'required',
                'file_url' => 'required',
            ]);
            if ($validator->fails()) {
                return  response()->json(['errors' => $validator->errors()]);
            }
            $id = $request->user()->id;

            if(isset($_FILES['file_url'])){
                $filename = date("Ymd-his") . '.' . $_FILES['file_url']['name'];
                $destinationPath = public_path("uploads/" . $filename);
                move_uploaded_file($_FILES['file_url']['tmp_name'], $destinationPath);
                if (file_exists($destinationPath)){
                    $file_url = $filename;
                }
            }

            $company_detail = new CompanyDetail([
                'user_id' => $id,
                'name' => $request->name,
                'phone' => $request->phone,
                'address' => $request->address,
                'city' => $request->city,
                'state' => $request->state,
                'county' => $request->county,
                'postal_code' => $request->postal_code,
                'file_url' => $file_url,
            ]);
            $company_detail->save();

            if($company_detail){

                return response()->json(["status" => TRUE,"message" => "Company profile created successfully"]);

            }else{

                return response()->json(["status" => FALSE,"message" => "Something went wrong"]);

            }
        }
    }

    public function user(Request $request)
    {
        return response()->json($request->user());
    }
}
