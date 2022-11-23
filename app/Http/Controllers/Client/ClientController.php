<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Exports\ClientsExport;
use App\Imports\ClientsImport;
use Maatwebsite\Excel\Facades\Excel;
use Response;
use App\Client;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($userid)
    {
        $clients = Client::where('user_id', $userid)->get();
        if (sizeof($clients)) {
            return response()->json([
                'status' => TRUE,
                'message' => "List fetch successfully",
                'clients' => $clients
            ]);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => "List not fetch successfully",
                'clients' => []
            ]);
        }
    }

    public function export($userid)
    {
        try {
            return Excel::download(new ClientsExport($userid), 'clients.csv');
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully export items!'
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => FALSE,
                'message' => 'Something went wrong!'
            ], 200);
        }

    }

    /**
    * @return \Illuminate\Support\Collection
    */

    public function import($userid)
    {
        try {
            Excel::import(new ClientsImport($userid),request()->file('file'));
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully import clients!'
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => FALSE,
                'message' => 'Something went wrong!'
            ], 200);
        }
    }

    public function downloadfile()
    {
        $filepath = public_path('samples/empty-clients.csv');
        return Response::download($filepath);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'mobile' => 'required',
            'other_mobile' => 'nullable',
            'address' => 'required',
            'address2' => 'nullable',
            'city' => 'required',
            'state' => 'required',
            'postel_code' => 'required',
            'note' => 'nullable'
        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $client = new Client([
            'user_id' => $request->user()->id,
            'name' => $request->name,
            'email' => $request->email,
            'mobile' => $request->mobile,
            'other_mobile' => $request->other_mobile,
            'address' => $request->address,
            'address2' => $request->address2,
            'city' => $request->city,
            'state' => $request->state,
            'postel_code' => $request->postel_code,
            'note' => $request->note
        ]);
        $client->save();
        if ($client) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully created client!'
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Successfully not created client!'
            ], 200);
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
    public function show($id)
    {
        $client = Client::find($id);
        if ($client) {
            return response()->json([
                'status' => TRUE,
                'message' => "List fetch successfully",
                'client' => $client
            ]);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => "List not fetch successfully",
                'client' => []
            ]);
        }
        return response()->json($client);
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
        $validator = Validator::make($request->all(), [
            'id' => 'required',
            'name' => 'required',
            'email' => 'required',
            'mobile' => 'required',
            'other_mobile' => 'nullable',
            'address' => 'required',
            'address2' => 'nullable',
            'city' => 'required',
            'state' => 'required',
            'postel_code' => 'required',
            'note' => 'nullable'
        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $client = Client::find($request->id);
        if($client){
            $client->name = $request->name;
            $client->email = $request->email;
            $client->mobile = $request->mobile;
            $client->other_mobile = $request->other_mobile;
            $client->address = $request->address;
            $client->address2 = $request->address2;
            $client->city = $request->city;
            $client->state = $request->state;
            $client->postel_code = $request->postel_code;
            $client->note = $request->note;
            $client->save();
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully update client!'
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Record not found!'
            ], 404);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required'
        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $id = $request->id;
        $client = Client::find($id);
        if ($client) {
            $client->delete();
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully deleted client!'
            ], 200);
        }else{
            return response()->json([
                'status' => TRUE,
                'message' => 'Record not found!'
            ], 404);
        }
    }
}
