<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ContractForm;
use Illuminate\Support\Facades\Mail;

class ContractFormController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($userid)
    {
        $contracts = ContractForm::where('user_id', $userid)->get();
        return response()->json(['contracts' => $contracts]);
    }

    public function mail(Request $request)
    {
        $contract = ContractForm::where('id', $request->lies_form)->first();

        $pathToFile = $contract->file;
        $email = $request->email;
        Mail::send('emails.LiesForm', ['user' => "Secure Lien Release"],

        function($message) use ($email, $pathToFile){

            $message->from('support@securelienrelease.com', 'Secure Lien Release');

            $message->to($email)->subject('Lies Contract Form');

            $message->attach(public_path($pathToFile));
        });
        // dd($contract);
        return response()->json(['message' => 'Mail sent successfully']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // $request->validate([
        //     'name' => 'required',
        //     'file' => 'required|mimes:pdf'
        // ]);

        if($request->hasFile('file')){
            $fileName = time().'.'.$request->file->extension();
            $request->file->move(public_path('contract/forms'), $fileName);
            $pdf = 'contract/forms/'.$fileName;
        }

        $contract = new ContractForm([
            'user_id' => $request->userid,
            'name' => $request->name,
            'file' => $pdf
        ]);
        $contract->save();
        return response()->json([
            'message' => 'Successfully created contract!'
        ], 201);

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
    public function destroy(Request $request)
    {
        $id = $request->id;
        $contract = ContractForm::where('id' ,$id)->first();
        if ($contract) {
            $contract->delete();
            $pdf_path = $contract->file;
            @unlink(public_path($pdf_path));
            return response()->json([
                'message' => 'Successfully deleted contract form!'
            ], 200);
        }else{
            return response()->json([
                'message' => 'Not Found!'
            ], 404);
        }
    }
}
