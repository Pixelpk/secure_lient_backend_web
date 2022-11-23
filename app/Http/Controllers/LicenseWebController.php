<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\LicenseWebLink;
use Illuminate\Support\Facades\URL;

class LicenseWebController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // dd($request->all());

        $validator = Validator::make($request->all(), [
            'file_url' => 'required',
            'facebook_url' => 'required',
            'twitter_url' => 'required',
            'instagram_url' => 'required',
            'web_url' => 'required',
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

        $license_web_links = new LicenseWebLink([
            'user_id' => $id,
            'file_url' => $file_url,
            'facebook_url' => $request->facebook_url,
            'twitter_url' => $request->twitter_url,
            'instagram_url' => $request->instagram_url,
            'web_url' => $request->web_url,
        ]);
        $license_web_links->save();

        if($license_web_links){
            return response()->json(["status" => TRUE,"message" => "Created successfully"]);
        }else{
            return response()->json(["status" => FALSE,"message" => "Something went wrong"]);
        }
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
    public function show(Request $request)
    {
        $id = $request->user()->id;
        $data = LicenseWebLink::where('user_id', $id)->first();
        if ($data) {
            $data->file_url = URL::to('/public/uploads/'.$data->file_url);
            return response()->json([
                "status" => TRUE,
                "message" => "License detail fetch successfully",
                'data' => $data
            ]);
        }else{
            return response()->json([
                "status" => FALSE,
                "message" => "License detail not fetch successfully",
                'data' => $data
            ]);
        }
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
    public function update(Request $request)
    {
        // dd($request->all());

        $id = $request->user()->id;
        if (LicenseWebLink::where('user_id', $id)->exists()) {
            $validator = Validator::make($request->all(), [
                'facebook_url' => 'required',
                'twitter_url' => 'required',
                'instagram_url' => 'required',
                'web_url' => 'required',
            ]);
            if ($validator->fails()) {
                return  response()->json(['errors' => $validator->errors()]);
            }

            $license_detail = LicenseWebLink::where('user_id', $id)->first();
            if(isset($_FILES['file_url'])){
                unlink(public_path().'/uploads/'.$license_detail->file_url);

                $filename = date("Ymd-his") . '.' . $_FILES['file_url']['name'];
                $destinationPath = public_path("uploads/" . $filename);
                move_uploaded_file($_FILES['file_url']['tmp_name'], $destinationPath);
                if (file_exists($destinationPath)){
                    $file_url = $filename;
                }
            }else{
                $file_url = $license_detail->file_url;
            }

            if($license_detail){
                $license_detail->file_url = $file_url;
                $license_detail->facebook_url = $request->facebook_url;
                $license_detail->twitter_url = $request->twitter_url;
                $license_detail->instagram_url = $request->instagram_url;
                $license_detail->web_url = $request->web_url;
                $license_detail->save();
                return response()->json(["status" => TRUE,"message" => "Updated successfully"]);
            }else{
                return response()->json(["status" => FALSE,"message" => "Something went wrong"]);
            }
        }else{
            $validator = Validator::make($request->all(), [
                'file_url' => 'required',
                'facebook_url' => 'required',
                'twitter_url' => 'required',
                'instagram_url' => 'required',
                'web_url' => 'required',
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

            $license_web_links = new LicenseWebLink([
                'user_id' => $id,
                'file_url' => $file_url,
                'facebook_url' => $request->facebook_url,
                'twitter_url' => $request->twitter_url,
                'instagram_url' => $request->instagram_url,
                'web_url' => $request->web_url,
            ]);
            $license_web_links->save();

            if($license_web_links){
                return response()->json(["status" => TRUE,"message" => "Created successfully"]);
            }else{
                return response()->json(["status" => FALSE,"message" => "Something went wrong"]);
            }
        }
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
