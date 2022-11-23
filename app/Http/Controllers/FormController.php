<?php

namespace App\Http\Controllers;

use App\AdditionalWorkAuthorization;
use Illuminate\Http\Request;
use App\CaPreliminaryNotice;
use App\ConditionalWaiverAndReleaseOnFinalPayment;
use App\ConditionalWaiverAndReleaseOnProgressPayment;
use App\UnconditionalWaiverAndReleaseOnFinalPayment;
use App\UnconditionalWaiverAndReleaseOnProgressPayment;
use Barryvdh\DomPDF\Facade as PDF;

class FormController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function form1(Request $request, $user_id)
    {
        if($request->isMethod('get')){
            return view('Forms.caPreliminaryNotice');
        }else{
            $client_id = mt_rand(100000, 999999);
            $invoice_id = $request->invoice_no;
            $image = $request->signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['client_id'] = $client_id;
                $data['invoice_id'] = $invoice_id;
                $data['signature'] = $signature;
                // dd($data);
                if (CaPreliminaryNotice::where('user_id', $user_id)->where('client_id', $client_id)->where('invoice_id', $invoice_id)->exists()) {
                    return redirect()->back()->with('error','Form already submitted.');
                }else{
                    $ca_preliminary_notice = new CaPreliminaryNotice();
                    $ca_preliminary_notice->fill($data)->save();
                    return redirect()->back()->with('success','Form submit successfully.');
                }
            } catch (\Exception $ex) {
                dd($ex);
                return redirect()->back()->with('error',$ex->error);
                // return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form1Data(Request $request, $user_id, $client_id, $invoice_id)
    {
        $form1 = CaPreliminaryNotice::where('user_id', $request->user_id)
        ->where('client_id', $request->client_id)
        ->where('invoice_id', $request->invoice_id)
        ->first();
        return view('Forms.GetcaPreliminaryNotice', compact('form1'));
    }

    public function form2(Request $request, $user_id, $client_id, $invoice_id)
    {
        if($request->isMethod('get')){
            return view('Forms.ConditionalWaiverAndReleaseOnFinalPayment');
        }else{
            // dd($request->all());
            $image = $request->signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['client_id'] = $client_id;
                $data['signature'] = $signature;
                $data['invoice_id'] = $invoice_id;
                if (ConditionalWaiverAndReleaseOnFinalPayment::where('user_id', $user_id)->where('client_id', $client_id)->where('invoice_id', $invoice_id)->exists()) {
                    return redirect()->back()->with('error','Form already submitted.');
                }else{
                    $ca_preliminary_notice = new ConditionalWaiverAndReleaseOnFinalPayment();
                    $ca_preliminary_notice->fill($data)->save();
                    return redirect()->back()->with('success','Form submit successfully.');
                }
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form2Data(Request $request, $user_id, $client_id, $invoice_id)
    {
        $form2 = ConditionalWaiverAndReleaseOnFinalPayment::where('user_id', $request->user_id)
        ->where('client_id', $request->client_id)
        ->where('invoice_id', $request->invoice_id)
        ->first();
        return view('Forms.GetConditionalWaiverAndReleaseOnFinalPayment', compact('form2'));
    }

    public function form3(Request $request, $user_id, $client_id, $invoice_id)
    {
        if($request->isMethod('get')){
            return view('Forms.ConditionalWaiverAndReleaseOnProgressPayment');
        }else{
            // dd($request->all());
            $image = $request->signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['client_id'] = $client_id;
                $data['signature'] = $signature;
                $data['invoice_id'] = $invoice_id;
                if (ConditionalWaiverAndReleaseOnProgressPayment::where('user_id', $user_id)->where('client_id', $client_id)->where('invoice_id', $invoice_id)->exists()) {
                    return redirect()->back()->with('error','Form already submitted.');
                }else{
                    $ca_preliminary_notice = new ConditionalWaiverAndReleaseOnProgressPayment();
                    $ca_preliminary_notice->fill($data)->save();
                    return redirect()->back()->with('success','Form submit successfully.');
                }
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form3Data(Request $request, $user_id, $client_id, $invoice_id)
    {
        $form3 = ConditionalWaiverAndReleaseOnProgressPayment::where('user_id', $request->user_id)
        ->where('client_id', $request->client_id)
        ->where('invoice_id', $request->invoice_id)
        ->first();
        return view('Forms.GetConditionalWaiverAndReleaseOnProgressPayment', compact('form3'));
    }

    public function form4(Request $request, $user_id, $client_id, $invoice_id)
    {
        if($request->isMethod('get')){
            return view('Forms.UnconditionalWaiverAndReleaseOnFinalPayment');
        }else{
            // dd($request->all());
            $image = $request->signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['client_id'] = $client_id;
                $data['signature'] = $signature;
                $data['invoice_id'] = $invoice_id;
                if (UnconditionalWaiverAndReleaseOnFinalPayment::where('user_id', $user_id)->where('client_id', $client_id)->where('invoice_id', $invoice_id)->exists()) {
                    return redirect()->back()->with('error','Form already submitted.');
                }else{
                    $ca_preliminary_notice = new UnconditionalWaiverAndReleaseOnFinalPayment();
                    $ca_preliminary_notice->fill($data)->save();
                    return redirect()->back()->with('success','Form submit successfully.');
                }
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form4Data(Request $request, $user_id, $client_id, $invoice_id)
    {
        $form4 = UnconditionalWaiverAndReleaseOnFinalPayment::where('user_id', $request->user_id)
        ->where('client_id', $request->client_id)
        ->where('invoice_id', $request->invoice_id)
        ->first();
        return view('Forms.GetUnconditionalWaiverAndReleaseOnFinalPayment', compact('form4'));
    }

    public function form5(Request $request, $user_id, $client_id, $invoice_id)
    {
        if($request->isMethod('get')){
            return view('Forms.UnconditionalWaiverAndReleaseOnProgressPayment');
        }else{
            // dd($request->all());
            $image = $request->signature;
            $image = str_replace('data:image/png;base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = date('mdYHis').uniqid().'.'.'png';
            \File::put(public_path(). '/Signatures/' . $imageName, base64_decode($image));
            $signature = 'Signatures/'.$imageName;
            try {
                $data = $request->all();
                $data['user_id'] = $user_id;
                $data['client_id'] = $client_id;
                $data['signature'] = $signature;
                $data['invoice_id'] = $invoice_id;
                if (UnconditionalWaiverAndReleaseOnProgressPayment::where('user_id', $user_id)->where('client_id', $client_id)->where('invoice_id', $invoice_id)->exists()) {
                    return redirect()->back()->with('error','Form already submitted.');
                }else{
                    $ca_preliminary_notice = new UnconditionalWaiverAndReleaseOnProgressPayment();
                    $ca_preliminary_notice->fill($data)->save();
                    return redirect()->back()->with('success','Form submit successfully.');
                }
            } catch (\Exception $ex) {
                return redirect()->back()->with('error','Something went wrong.');
            }
        }
    }

    public function form5Data(Request $request, $user_id, $client_id, $invoice_id)
    {
        $form5 = UnconditionalWaiverAndReleaseOnProgressPayment::where('user_id', $request->user_id)
        ->where('client_id', $request->client_id)
        ->where('invoice_id', $request->invoice_id)
        ->first();
        return view('Forms.GetUnconditionalWaiverAndReleaseOnProgressPayment', compact('form5'));
    }

    public function ListSubmitForms(Request $request)
    {
        $user_id = $request->user()->id;
        $form_type = $request->form_type;
        switch ($form_type) {
            case 'form1':
                $form1 = CaPreliminaryNotice::where('user_id', $user_id)->get();
                return response()->json([
                    'status' => TRUE,
                    'data' => $form1,
                    'message' => 'Client Forms Fetch'
                ]);
                break;
            case 'form2':
                $form2 = ConditionalWaiverAndReleaseOnFinalPayment::where('user_id', $user_id)->get();
                return response()->json([
                    'status' => TRUE,
                    'data' => $form2,
                    'message' => 'Client Forms Fetch'
                ]);
                break;
            case 'form3':
                $form3 = ConditionalWaiverAndReleaseOnProgressPayment::where('user_id', $user_id)->get();
                return response()->json([
                    'status' => TRUE,
                    'data' => $form3,
                    'message' => 'Client Forms Fetch'
                ]);
                break;
            case 'form4':
                $form4 = UnconditionalWaiverAndReleaseOnFinalPayment::where('user_id', $user_id)->get();
                return response()->json([
                    'status' => TRUE,
                    'data' => $form4,
                    'message' => 'Client Forms Fetch'
                ]);
                break;
            case 'form5':
                $form5 = UnconditionalWaiverAndReleaseOnProgressPayment::where('user_id', $user_id)->get();
                return response()->json([
                    'status' => TRUE,
                    'data' => $form5,
                    'message' => 'Client Forms Fetch'
                ]);
                break;
            case 'form6':
                $form6 = AdditionalWorkAuthorization::where('user_id', $user_id)->get();
                return response()->json([
                    'status' => TRUE,
                    'data' => $form6,
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
