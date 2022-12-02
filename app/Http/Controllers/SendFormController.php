<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CaPreliminaryNoticeFill;
use App\ConditionalWaiverAndReleaseOnFinalPaymentFill;
use App\ConditionalWaiverAndReleaseOnProgressPaymentFill;
use App\UnconditionalWaiverAndReleaseOnFinalPaymentFill;
use App\UnconditionalWaiverAndReleaseOnProgressPaymentFill;
use App\AdditionalWorkAuthorization;
use App\User;
use Illuminate\Support\Facades\Mail;
use Barryvdh\DomPDF\Facade as PDF;

class SendFormController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function sendsms($post_data)
    {
        $curl = curl_init();
        $api_key = base64_encode('ramnik@websquareinfotech.com:182F5CE5-95B6-46E3-C898-4DB46B473A99');
        $header = array(
            'Content-Type: application/json',
            'Authorization: Basic '.$api_key
        );

        // return $post_data;
        curl_setopt_array($curl, array(
        CURLOPT_URL => 'https://rest.clicksend.com/v3/sms/send',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => json_encode($post_data),
        CURLOPT_HTTPHEADER => $header,
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        return $response;
    }

    public function email($emailData)
    {
        Mail::send('emails.contractForm', ["company" => "Secure Lien Release", "data" => $emailData],

        function($message) use ($emailData){

            $message->from('support@securelienrelease.com', 'Secure Lien Release');

            $message->to($emailData['email'])->subject('Lies Contract Form');
        });
        return true;
    }

    public function form1(Request $request, $user_id)
    {

        if($request->isMethod('get'))
        {
            return view('Forms.caPreliminaryNotice');
        }else{
            // dd($request->all());
            $form_no = mt_rand(100000, 999999);
            $mobile = $request->mobile;
            $image = $request->signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['form_no'] = $form_no;
                $data['signature'] = $signature;
                $ca_preliminary_notice = new CaPreliminaryNoticeFill();
                $ca_preliminary_notice->fill($data)->save();

                $user = User::find($user_id);
                $emailData['email'] = $request->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $form_no;
                $emailData['type'] = '-form1/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $mobile
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form1Data(Request $request, $form_no)
    {

        $form1 = CaPreliminaryNoticeFill::where('form_no', $form_no)->first();
        return view('Forms.GetcaPreliminaryNotice', compact('form1'));
    }

    public function editForm1Data(Request $request, $form_no)
    {
        if($request->isMethod('get')){
            $form1 = CaPreliminaryNoticeFill::where('form_no', $form_no)->first();
            return view('Forms.EditcaPreliminaryNotice', compact('form1'));
        }else{
            // dd($request->all());
            $getForm1 = CaPreliminaryNoticeFill::where('form_no', $request->form_no)->first();
            try {
                $data = $request->all();
                $data['user_id'] = $getForm1->user_id;
                $data['form_no'] = $getForm1->form_no;
                $data['email'] = $getForm1->email;
                $data['mobile'] = $getForm1->mobile;
                $data['signature'] = $getForm1->signature;
                $data['signed_date'] = $getForm1->signed_date;
                $ca_preliminary_notice = new CaPreliminaryNoticeFill();
                $ca_preliminary_notice->fill($data)->save();
                $getForm1->delete();

                $user = User::find($getForm1->user_id);
                $emailData['email'] = $getForm1->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $getForm1->form_no;
                $emailData['type'] = '-form1/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $data['mobile']
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form2(Request $request, $user_id)
    {
        // dd('asd');
        if($request->isMethod('get')){
            return view('Forms.ConditionalWaiverAndReleaseOnFinalPayment');
        }else{
            // dd($request->all());
            $form_no = mt_rand(100000, 999999);
            $mobile = $request->mobile;
            $image = $request->signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['form_no'] = $form_no;
                $data['signature'] = $signature;
                $ca_preliminary_notice = new ConditionalWaiverAndReleaseOnFinalPaymentFill();
                $ca_preliminary_notice->fill($data)->save();

                $user = User::find($user_id);
                $emailData['email'] = $request->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $form_no;
                $emailData['type'] = '-form2/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $mobile
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form2Data(Request $request, $form_no)
    {

        $form2 = ConditionalWaiverAndReleaseOnFinalPaymentFill::where('form_no', $form_no)->first();
        return view('Forms.GetConditionalWaiverAndReleaseOnFinalPayment', compact('form2'));
    }

    public function editForm2Data(Request $request, $form_no)
    {

        if($request->isMethod('get')){
            $form2 = ConditionalWaiverAndReleaseOnFinalPaymentFill::where('form_no', $form_no)->first();
            return view('Forms.EditConditionalWaiverAndReleaseOnFinalPayment', compact('form2'));
        }else{
            // dd($request->all());
            $getForm2 = ConditionalWaiverAndReleaseOnFinalPaymentFill::where('form_no', $request->form_no)->first();
            try {
                $data = $request->all();
                $data['user_id'] = $getForm2->user_id;
                $data['form_no'] = $form_no;
                $data['email'] = $getForm2->email;
                $data['mobile'] = $getForm2->mobile;
                $data['signature'] = $getForm2->signature;
                $data['signature_date'] = $getForm2->signature_date;
                $ca_preliminary_notice = new ConditionalWaiverAndReleaseOnFinalPaymentFill();
                $ca_preliminary_notice->fill($data)->save();
                $getForm2->delete();

                $user = User::find($getForm2->user_id);
                $emailData['email'] = $getForm2->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $getForm2->form_no;
                $emailData['type'] = '-form2/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $data['mobile']
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form3(Request $request, $user_id)
    {

        if($request->isMethod('get')){
            return view('Forms.ConditionalWaiverAndReleaseOnProgressPayment');
        }else{
            // dd($request->all());
            $form_no = mt_rand(100000, 999999);
            $mobile = $request->mobile;
            $image = $request->signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['form_no'] = $form_no;
                $data['signature'] = $signature;
                $ca_preliminary_notice = new ConditionalWaiverAndReleaseOnProgressPaymentFill();
                $ca_preliminary_notice->fill($data)->save();

                $user = User::find($user_id);
                $emailData['email'] = $request->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $form_no;
                $emailData['type'] = '-form3/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $mobile
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form3Data(Request $request, $form_no)
    {

        $form3 = ConditionalWaiverAndReleaseOnProgressPaymentFill::where('form_no', $form_no)->first();
        return view('Forms.GetConditionalWaiverAndReleaseOnProgressPayment', compact('form3'));
    }

    public function editForm3Data(Request $request, $form_no)
    {
        if($request->isMethod('get')){
            $form3 = ConditionalWaiverAndReleaseOnProgressPaymentFill::where('form_no', $form_no)->first();
            return view('Forms.EditConditionalWaiverAndReleaseOnProgressPayment', compact('form3'));
        }else{
            // dd($request->all());
            $getForm3 = ConditionalWaiverAndReleaseOnProgressPaymentFill::where('form_no', $request->form_no)->first();
            try {
                $data = $request->all();
                $data['user_id'] =  $getForm3->user_id;
                $data['form_no'] = $getForm3->form_no;
                $data['email'] = $getForm3->email;
                $data['mobile'] = $getForm3->mobile;
                $data['signature'] = $getForm3->signature;
                $data['signature_date'] = $getForm3->signature_date;
                $ca_preliminary_notice = new ConditionalWaiverAndReleaseOnProgressPaymentFill();
                $ca_preliminary_notice->fill($data)->save();
                $getForm3->delete();

                $user = User::find($getForm3->user_id);
                $emailData['email'] = $getForm3->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $getForm3->orm_no;
                $emailData['type'] = '-form3/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $data['mobile']
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form4(Request $request, $user_id)
    {
        if($request->isMethod('get')){
            return view('Forms.UnconditionalWaiverAndReleaseOnFinalPayment');
        }else{
            // dd($request->all());
            $form_no = mt_rand(100000, 999999);
            $mobile = $request->mobile;
            $image = $request->signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['form_no'] = $form_no;
                $data['signature'] = $signature;
                $ca_preliminary_notice = new UnconditionalWaiverAndReleaseOnFinalPaymentFill();
                $ca_preliminary_notice->fill($data)->save();

                $user = User::find($user_id);
                $emailData['email'] = $request->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $form_no;
                $emailData['type'] = '-form4/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $mobile
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form4Data(Request $request, $form_no)
    {
        $form4 = UnconditionalWaiverAndReleaseOnFinalPaymentFill::where('form_no', $form_no)->first();
        return view('Forms.GetUnconditionalWaiverAndReleaseOnFinalPayment', compact('form4'));
    }

    public function editForm4Data(Request $request, $form_no)
    {
        if($request->isMethod('get')){
            $form4 = UnconditionalWaiverAndReleaseOnFinalPaymentFill::where('form_no', $form_no)->first();
            return view('Forms.EditUnconditionalWaiverAndReleaseOnFinalPayment', compact('form4'));
        }else{
            // dd($request->all());
            $getForm4 = UnconditionalWaiverAndReleaseOnFinalPaymentFill::where('form_no', $request->form_no)->first();
            try {
                $data = $request->all();
                $data['user_id'] = $getForm4->user_id;
                $data['form_no'] = $getForm4->form_no;
                $data['email'] = $getForm4->email;
                $data['mobile'] = $getForm4->mobile;
                $data['signature'] = $getForm4->signature;
                $data['signature_date'] = $getForm4->signature_date;
                $ca_preliminary_notice = new UnconditionalWaiverAndReleaseOnFinalPaymentFill();
                $ca_preliminary_notice->fill($data)->save();
                $getForm4->delete();

                $user = User::find($getForm4->user_id);
                $emailData['email'] = $getForm4->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $getForm4->form_no;
                $emailData['type'] = '-form4/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $data['mobile']
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form5(Request $request, $user_id)
    {
        if($request->isMethod('get')){
            return view('Forms.UnconditionalWaiverAndReleaseOnProgressPayment');
        }else{
            // dd($request->all());
            $form_no = mt_rand(100000, 999999);
            $mobile = $request->mobile;
            $image = $request->signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['form_no'] = $form_no;
                $data['signature'] = $signature;
                $ca_preliminary_notice = new UnconditionalWaiverAndReleaseOnProgressPaymentFill();
                $ca_preliminary_notice->fill($data)->save();

                $user = User::find($user_id);
                $emailData['email'] = $request->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $form_no;
                $emailData['type'] = '-form1/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $mobile
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form5Data(Request $request, $form_no)
    {
        $form5 = UnconditionalWaiverAndReleaseOnProgressPaymentFill::where('form_no', $form_no)->first();
        return view('Forms.GetUnconditionalWaiverAndReleaseOnProgressPayment', compact('form5'));
    }

    public function editForm5Data(Request $request, $form_no)
    {
        if($request->isMethod('get')){
            $form5 = UnconditionalWaiverAndReleaseOnProgressPaymentFill::where('form_no', $form_no)->first();
            return view('Forms.EditUnconditionalWaiverAndReleaseOnProgressPayment', compact('form5'));
        }else{
            // dd($request->all());
            $getForm5 = UnconditionalWaiverAndReleaseOnProgressPaymentFill::where('form_no', $request->form_no)->first();
            try {
                $data = $request->all();
                $data['user_id'] = $getForm5->user_id;
                $data['form_no'] = $getForm5->form_no;
                $data['email'] = $getForm5->email;
                $data['mobile'] = $getForm5->mobile;
                $data['signature'] = $getForm5->signature;
                $data['signature_date'] = $getForm5->signature_date;
                $ca_preliminary_notice = new UnconditionalWaiverAndReleaseOnProgressPaymentFill();
                $ca_preliminary_notice->fill($data)->save();
                $getForm5->delete();

                $user = User::find($getForm5->user_id);
                $emailData['email'] = $getForm5->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $getForm5->form_no;
                $emailData['type'] = '-form1/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $data['mobile']
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form6(Request $request, $user_id)
    {
        if($request->isMethod('get')){
            return view('Forms.AdditionalWorkAuthorization');
        }else{
            // dd($request->all());
            $form_no = mt_rand(100000, 999999);
            $mobile = $request->mobile;
            $image = $request->contractor_signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['form_no'] = $form_no;
                $data['contractor_signature'] = $signature;
                $ca_preliminary_notice = new AdditionalWorkAuthorization();
                $ca_preliminary_notice->fill($data)->save();

                $user = User::find($user_id);
                $emailData['email'] = $request->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $form_no;
                $emailData['type'] = '-form6/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $mobile
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form6Data(Request $request, $form_no)
    {
        $form6 = AdditionalWorkAuthorization::where('form_no', $form_no)->first();
        return view('Forms.GetAdditionalWorkAuthorization', compact('form6'));
    }

    public function editForm6Data(Request $request, $form_no)
    {
        if($request->isMethod('get')){
            $form6 = AdditionalWorkAuthorization::where('form_no', $form_no)->first();
            return view('Forms.EditAdditionalWorkAuthorization', compact('form6'));
        }else{
            // dd($request->all());
            $getForm6 = AdditionalWorkAuthorization::where('form_no', $request->form_no)->first();
            try {
                $data = $request->all();
                $data['user_id'] = $getForm6->user_id;
                $data['form_no'] = $getForm6->form_no;
                $data['email'] = $getForm6->email;
                $data['mobile'] = $getForm6->mobile;
                $data['contractor_signature'] = $getForm6->contractor_signature;
                $data['contractor_signed_date'] = $getForm6->contractor_signed_date;
                $ca_preliminary_notice = new AdditionalWorkAuthorization();
                $ca_preliminary_notice->fill($data)->save();
                $getForm6->delete();

                $user = User::find($getForm6->user_id);
                $emailData['email'] = $getForm6->email;
                $emailData['user'] = $user;
                $emailData['form_no'] = $getForm6->form_no;
                $emailData['type'] = '-form6/';
                $this->email($emailData);
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an email. Please check your email. Thanks',
                        "to" => $data['mobile']
                ];
                $curl_response = $this->sendsms($post_data);
                return redirect()->back()->with('success','Form submit successfully.');
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function ListSubmitForms(Request $request)
    {
        $user_id = $request->user()->id;
        $form_type = $request->form_type;
        switch ($form_type) {
            case 'form1':
                $form1 = CaPreliminaryNoticeFill::where('user_id', $user_id)->latest()->get()->groupBy('email');
                return response()->json([
                    'status' => TRUE,
                    'data' => $form1,
                    'message' => 'Client Forms Fetch'
                ]);
                break;
            case 'form2':
                $form2 = ConditionalWaiverAndReleaseOnFinalPaymentFill::where('user_id', $user_id)->latest()->get()->groupBy('email');
                return response()->json([
                    'status' => TRUE,
                    'data' => $form2,
                    'message' => 'Client Forms Fetch'
                ]);
                break;
            case 'form3':
                $form3 = ConditionalWaiverAndReleaseOnProgressPaymentFill::where('user_id', $user_id)->latest()->get()->groupBy('email');
                return response()->json([
                    'status' => TRUE,
                    'data' => $form3,
                    'message' => 'Client Forms Fetch'
                ]);
                break;
            case 'form4':
                $form4 = UnconditionalWaiverAndReleaseOnFinalPaymentFill::where('user_id', $user_id)->latest()->get()->groupBy('email');
                return response()->json([
                    'status' => TRUE,
                    'data' => $form4,
                    'message' => 'Client Forms Fetch'
                ]);
                break;
            case 'form5':
                $form5 = UnconditionalWaiverAndReleaseOnProgressPaymentFill::where('user_id', $user_id)->latest()->get()->groupBy('email');
                return response()->json([
                    'status' => TRUE,
                    'data' => $form5,
                    'message' => 'Client Forms Fetch'
                ]);
                break;
            case 'form6':
                $form5 = AdditionalWorkAuthorization::where('user_id', $user_id)->latest()->get()->groupBy('email');
                return response()->json([
                    'status' => TRUE,
                    'data' => $form5,
                    'message' => 'Client Forms Fetch'
                ]);
                break;

            default:
                return response()->json([
                    'status' => FALSE,
                    'data' => [],
                    'message' => 'Please select correct form type'
                ]);
                break;
        }
    }

    public function sendEmail(Request $request)
    {
        // return $request->all();
        $id = $request->user()->id;
        $email = $request->email;
        $forms = json_decode($request->forms);
        $details = [

            'title' => 'Invoice',

            'forms' => $forms,

            'user_id' => $id,

            'email' => $email,

        ];
        try {
            \Mail::to($email)->send(new \App\Mail\FormMail($details));
            return response()->json([
                'status' => true,
                'message' => 'Successfully send email'
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => 'Something went wrong'
            ], 200);
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
