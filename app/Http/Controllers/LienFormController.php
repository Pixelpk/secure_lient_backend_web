<?php

namespace App\Http\Controllers;

use App\CaPreliminaryNotice;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class LienFormController extends Controller
{
    public function form1Get(Request $request)
    {
        return view('Forms.caPreliminaryNotice');
    }
    public function form2Get(Request $request)
    {
        return view('Forms.ConditionalWaiverAndReleaseOnFinalPayment');
    }
    public function form3Get(Request $request)
    {
        return view('Forms.ConditionalWaiverAndReleaseOnProgressPayment');
    }
    public function form4Get(Request $request)
    {
        return view('Forms.UnconditionalWaiverAndReleaseOnFinalPayment');
    }
    public function form5Get(Request $request)
    {
        return view('Forms.UnconditionalWaiverAndReleaseOnProgressPayment');
    }

    // save data
    public function form1Save(Request $request, $user_id)
    {
        dd($request->all());
        $client_id = Str::uuid()->toString();
        $invoice_id = $request->invoice_id;
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
            return redirect()->back()->with('error','Something went wrong.');
        }
    }
}
