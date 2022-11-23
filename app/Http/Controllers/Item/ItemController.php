<?php

namespace App\Http\Controllers\Item;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Exports\ItemsExport;
use App\Imports\ItemsImport;
use Maatwebsite\Excel\Facades\Excel;
use Response;
use App\Item;
use App\ItemTax;

class ItemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($userid)
    {
        $items = Item::where('user_id', $userid)->get();
        if(sizeof($items)){
            return response()->json([
                'status' => TRUE,
                'message' => 'Item list fetch',
                'items' => $items
            ]);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Item list not fetch',
                'items' => []
            ]);
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
            'price' => 'required',
        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $item = new Item([
            'user_id' => $request->user()->id,
            'name' => $request->name,
            'price' => $request->price,
            'note' => $request->note
        ]);
        $item->save();
        // foreach ($request->taxes as $key => $value) {
        //     $Tax = new ItemTax([
        //     'user_id' => $request->userid,
        //     'item_id' => $item->id,
        //     'tax_id' => $value['id']
        //     ]);
        //     $Tax->save();
        // }
        if ($item) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully created item!'
            ], 200);
        }else{
            return response()->json([
                'status' => TRUE,
                'message' => 'Something went wrong!'
            ], 200);
        }

    }

    public function export($userid)
    {
        try {
            return Excel::download(new ItemsExport($userid), 'items.csv');
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
            Excel::import(new ItemsImport($userid),request()->file('file'));
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully import items!'
            ], 201);
        } catch (\Exception $ex) {
            return response()->json([
                'status' => FALSE,
                'message' => 'Something went wrong!'
            ], 201);
        }
    }

    public function downloadfile()
    {
        $filepath = public_path('samples/empty-items.csv');
        try {
            return Response::download($filepath);
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully download file!'
            ], 200);
        } catch (\Throwable $th) {
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
        $item = Item::find($id);
        if($item){
            return response()->json([
                'status' => TRUE,
                'message' => 'Item fetch',
                'item' => $item
            ]);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Item not fetch',
                'item' => []
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
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'price' => 'required',
        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $item = Item::find($request->id);
        if($item){
            $item->name = $request->name;
            $item->price = $request->price;
            $item->note = $request->note;
            $item->save();
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully update item!'
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

        $id = $request->id;
        $item = Item::find($id);
        if ($item) {
            $item->delete();
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully deleted item!'
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Record Not Found!'
            ], 404);
        }
    }
}
