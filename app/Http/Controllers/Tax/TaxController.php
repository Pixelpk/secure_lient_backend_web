<?php

namespace App\Http\Controllers\Tax;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Tax;

class TaxController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $userid = $request->user()->id;
        $taxes = Tax::where('user_id', $userid)->get();
        if (sizeof($taxes)) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Taxes list fetch',
                'taxes' => $taxes
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Taxes list not fetch',
                'taxes' => []
            ], 200);
        }
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
            'percentage' => 'required',

        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $tax = new Tax([
            'user_id' => $request->user()->id,
            'name' => $request->name,
            'percentage' => $request->percentage
        ]);
        $tax->save();
        if ($tax) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully created tax!'
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Something went wrong!'
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
    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required',
            'name' => 'required',
            'percentage' => 'required',

        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $tax = Tax::find($request->id);
        if($tax){
            $tax->name = $request->name;
            $tax->percentage = $request->percentage;
            $tax->save();
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully update tax!'
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
            'id' => 'required',

        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $tax = Tax::find($request->id);
        if($tax){
            $tax->delete();
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully deleted tax!'
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Record not found!'
            ], 404);
        }
    }
}
