<?php

namespace App\Http\Controllers\Estimate;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Exports\EstimatesExport;
use Maatwebsite\Excel\Facades\Excel;
use Response;
use App\Client;
use App\CompanyDetail;
use App\LicenseWebLink;
use App\Estimate;
use App\EstimateItem;
use App\EstimateDocument;

class EstimateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $userid = $request->user()->id;
        $status = $request->status;
        $estimates = Estimate::where('estimates.user_id', $userid)
        ->where('status', $status)
        ->join('clients', 'estimates.client_id', '=', 'clients.id')
        ->select('clients.*','estimates.*', 'clients.user_id as client_user_id')
        ->paginate(10);
        if (sizeof($estimates)) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully fetch estimates list',
                'estimates' => $estimates
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Data not available',
                'estimates' => []
            ], 200);
        }
    }

    public function search(Request $request)
    {
        $userid = $request->user()->id;
        $status = $request->status;
        $search = $request->search;
        $results = [];
        $estimates = Estimate::where('estimates.user_id', $userid)
        ->join('clients', 'estimates.client_id', '=', 'clients.id')
        ->where('estimates.status', $status)
        ->where(function ($query) use($search) {
            $query->where('clients.name', 'like', '%' . $search . '%')
               ->orWhere('clients.address', 'like', '%' . $search . '%')
               ->orWhere('estimates.po_number', 'like', '%' . $search . '%');
        })
        ->select('clients.*','estimates.*', 'clients.user_id as client_user_id')
        ->paginate(10);
        if($estimates){
            return response()->json([
                'status' => TRUE,
                'message' => 'List fetch',
                'estimates' => $estimates
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'List not fetch',
                'estimates' => $estimates
            ], 200);
        }

    }

    public function export(Request $request)
    {
        $userid = $request->user()->id;
        $from_date = $request->from_date;
        $to_date = $request->to_date;
        $status = $request->status;
        $data = [
            'userid' => $userid,
            'from_date' =>  $from_date,
            'to_date' => $to_date,
            'status' => $status,
        ];
        try {
            return Excel::download(new EstimatesExport($data), 'estimates.csv');
            return response()->json([
                'status' => FALSE,
                'message' => 'Successfully export'
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => FALSE,
                'message' => 'Something went wrong'
            ], 200);
        }

    }

    public function sendsms($post_data)
    {
        // return json_encode($post_data);
        $curl = curl_init();
        $api_key = base64_encode('ramnik@websquareinfotech.com:182F5CE5-95B6-46E3-C898-4DB46B473A99');
        $header = array(
            'Content-Type: application/json',
            'Authorization: Basic '.$api_key
        );

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
        if ($response === FALSE) {
            printf("cUrl error (#%d): %s<br>\n",
                   curl_errno($curl),
                   htmlspecialchars(curl_error($curl)))
                   ;
        }

        curl_close($curl);
        return $response;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // dd($request->all());
        $id = $request->user()->id;
        $request->items = json_decode($request->items);
        $request->forms = json_decode($request->forms);

        $validator = Validator::make($request->all(), [
            'client_id' => 'required',
            'po_number' => 'required',
            'days_to_pay' => 'required',
            'markup' => 'required',
            'subtotal' => 'required',
            'tax' => 'required',
            'discount' => 'required',
            'total' => 'required',
            'date' => 'required',
            'items' => 'required',
            'items.*.item_id' => 'required',
            'items.*.name' => 'required',
            'items.*.rate' => 'required',
            'items.*.qty' => 'required',
            'items.*.tax' => 'required',
            'items.*.total' => 'required',
            // 'forms' => 'required',
        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $create_estimate = Estimate::create([
            'user_id' => $request->user()->id,
            'client_id' => $request->client_id,
            'po_number' => $request->po_number,
            'days_to_pay' => $request->days_to_pay,
            'markup' => $request->markup,
            'subtotal' => $request->subtotal,
            'tax' => $request->tax,
            'discount' => $request->discount,
            'total' => $request->total,
            'date' => $request->date,
            'notes' => $request->notes
            // 'forms' => json_encode($request->forms)
        ]);
        if($create_estimate){
            foreach ($request->items as $key => $item) {
                $create_items = EstimateItem::create([
                    'invoice_id' => $create_estimate->id,
                    'item_id' => $item->item_id,
                    'name' => $item->name,
                    'rate' => $item->rate,
                    'qty' => $item->qty,
                    'tax' => $item->tax,
                    'total' => $item->total
                ]);
            }

            $details = [

                'title' => 'Invoice',

                'user_id' => $id,

                'estimate_id' => $create_estimate->id,

            ];

            if($request->hasFile('attachments')){
                foreach ($request->attachments as $key => $value) {
                    $fileName = date("Ymd-his") .rand(6,9999).'.'.$value->extension();
                    $value->move(public_path('uploads/'), $fileName);
                    $path = $fileName;
                    $estimate_document = new EstimateDocument();
                    $estimate_document->invoice_id = $create_estimate->id;
                    $estimate_document->document_type = "attachments";
                    $estimate_document->file_url = $path;
                    $estimate_document->save();
                }
            }

            if($request->hasFile('photos')){
                foreach ($request->photos as $key => $value) {
                    $fileName = date("Ymd-his") .rand(6,9999).'.'.$value->extension();
                    $value->move(public_path('uploads/'), $fileName);
                    $path = $fileName;
                    $estimate_photos = new EstimateDocument();
                    $estimate_photos->invoice_id = $create_estimate->id;
                    $estimate_photos->document_type = "photos";
                    $estimate_photos->file_url = $path;
                    $estimate_photos->save();
                }
            }

            if ($create_estimate) {
                // return view('emails.estimate')->with(['details' => $details]);

                \Mail::to($request->client_email)->send(new \App\Mail\EstimateMail($details));
                $client_detail = Client::find($request->client_id);
                $mobile = $client_detail->mobile;
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an estimate email. Please check your email. Thanks',
                        "to" => $mobile
                ];
                $curl_response = $this->sendsms($post_data);
                return response()->json([
                    'status' => TRUE,
                    'message' => 'Successfully create estimate'
                ], 200);
            }else{
                return response()->json([
                    'status' => FALSE,
                    'message' => 'Something went wrong'
                ], 200);
            }
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
        $user = $request->user();
        $estimate_id = $request->estimateid;
        $estimate = Estimate::where('user_id', $user->id)
        ->where('id', $estimate_id)
        ->with(['documents', 'items'])
        ->first();
        if ($estimate) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Fetch invoice',
                'data' => $estimate
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Record not found',
                'data' => $estimate
            ], 200);
        }

    }

    public function estimateStatus(Request $request)
    {
        $estimate = Estimate::find($request->estimate_id);
        $company_detail = CompanyDetail::find($estimate->user_id);
        if ($request->status == 'Accept') {
            $estimate->status = 1;
            $status = 'Accepted';
        }else{
            $estimate->status = 2;
            $status = 'Declined';
        }
        $estimate->save();

        if($company_detail){
            $mobile = $company_detail->phone;
            $post_data = [];
            $post_data['messages'][] = [
                    "from" => 'ClickSend',
                    "body" => 'Estimate #'.$estimate->id.' has been '.$status,
                    "to" => $mobile
            ];
            $curl_response = $this->sendsms($post_data);
        }
        return  response()->json(['status' => $request->status]);
    }

    public function downloadEstimate($estimateid, $userid)
    {
        $estimate = Estimate::where('id', $estimateid)
        ->with(['client', 'documents', 'items'])
        ->first();
        $company = CompanyDetail::where('id', $userid)->first();
        $license = LicenseWebLink::where('id', $userid)->first();
        $client_detail = Client::find($estimate->client_id);
        // dd($estimate);
        if ($estimate) {
            $estimate->email_status = 1;
            $estimate->save();
            if($company){
                $mobile = $company->phone;
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'Estimate #'.$estimate->id.' has been viewed by client',
                        "to" => $mobile
                ];
                $curl_response = $this->sendsms($post_data);
            }

            return view('emails.pdfEstimate', compact('estimate', 'company', 'license'));
            // $pdf = PDF::loadview('emails.pdfEstimate', compact('estimate'));
            // $pdf->setPaper('A4', 'potrate');
            // return $pdf->download('estimate.pdf');
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
        $request->items = json_decode($request->items);
        $request->forms = json_decode($request->forms);

        $validator = Validator::make($request->all(), [
            'po_number' => 'required',
            'days_to_pay' => 'required',
            'markup' => 'required',
            'subtotal' => 'required',
            'tax' => 'required',
            'discount' => 'required',
            'total' => 'required',
            'date' => 'required',
            'items' => 'required',
            'items.*.item_id' => 'required',
            'items.*.name' => 'required',
            'items.*.rate' => 'required',
            'items.*.qty' => 'required',
            'items.*.tax' => 'required',
            'items.*.total' => 'required',
        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $estimate = Estimate::find($request->estimate_id);
        if($estimate){
            $estimate->po_number = $request->po_number;
            $estimate->days_to_pay = $request->days_to_pay;
            $estimate->markup = $request->markup;
            $estimate->subtotal = $request->subtotal;
            $estimate->tax = $request->tax;
            $estimate->discount = $request->discount;
            $estimate->total = $request->total;
            $estimate->date = $request->date;
            $estimate->notes = $request->notes;
            // $estimate->forms = json_encode($request->forms);
            $estimate->email_status = 0;
            $estimate->save();

            // for invoice items

            $old_items = EstimateItem::where('invoice_id', $estimate->id)->get();
            foreach ($old_items as $old_item) {
                $old_item->delete();
            }

            foreach ($request->items as $key => $item) {
                $create_items = EstimateItem::create([
                    'invoice_id' => $estimate->id,
                    'item_id' => $item->item_id,
                    'name' => $item->name,
                    'rate' => $item->rate,
                    'qty' => $item->qty,
                    'tax' => $item->tax,
                    'total' => $item->total
                ]);
            }

            $details = [

                'title' => 'Invoice',

                'user_id' => $id,

                'estimate_id' => $estimate->id,

            ];

            // for estimate documents

            if($request->hasFile('attachments')){
                foreach ($request->attachments as $key => $value) {
                    $fileName = date("Ymd-his") .rand(6,9999).'.'.$value->extension();
                    $value->move(public_path('uploads/'), $fileName);
                    $path = $fileName;
                    $estimate_document = new EstimateDocument();
                    $estimate_document->invoice_id = $estimate->id;
                    $estimate_document->document_type = "attachments";
                    $estimate_document->file_url = $path;
                    $estimate_document->save();
                }
            }

            if($request->hasFile('photos')){
                foreach ($request->photos as $key => $value) {
                    $fileName = date("Ymd-his") .rand(6,9999).'.'.$value->extension();
                    $value->move(public_path('uploads/'), $fileName);
                    $path = $fileName;
                    $estimate_photos = new EstimateDocument();
                    $estimate_photos->invoice_id = $estimate->id;
                    $estimate_photos->document_type = "photos";
                    $estimate_photos->file_url = $path;
                    $estimate_photos->save();
                }
            }

            if ($estimate) {
                // return view('emails.estimate')->with(['details' => $details]);

                // \Mail::to($request->client_email)->send(new \App\Mail\EstimateMail($details));
                return response()->json([
                    'status' => TRUE,
                    'message' => 'Successfully update estimate'
                ], 200);
            }else{
                return response()->json([
                    'status' => FALSE,
                    'message' => 'Something went wrong'
                ], 200);
            }

        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Record not found'
            ], 200);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function destroyDoc(Request $request)
    {
        $old_doc = EstimateDocument::find($request->id);
        unlink(public_path().'/uploads/'.$old_doc->getRawOriginal('file_url'));
        $old_doc->delete();
        if ($old_doc) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully deleted!'
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Record not found',
            ], 404);
        }
    }

    public function destroy(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required'
        ]);
        if ($validator->fails()) {
            return  response()->json(['errors' => $validator->errors()]);
        }

        $estimate = Estimate::where('id',$request->id)->with('documents')->first();
        if ($estimate) {
            foreach ($estimate->documents as $value) {
                unlink(public_path().'/uploads/'.$value->getRawOriginal('file_url'));
            }
            $estimate->delete();
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully deleted!'
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Record not found',
            ], 404);
        }
    }
}
