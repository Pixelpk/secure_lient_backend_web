<?php

namespace App\Http\Controllers\Invoice;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Exports\InvoicesExport;
use Maatwebsite\Excel\Facades\Excel;
use Barryvdh\DomPDF\Facade as PDF;
use Response;
use App\Client;
use App\CompanyDetail;
use App\LicenseWebLink;
use App\Invoice;
use App\Estimate;
use App\InvoiceItem;
use App\InvoiceDocument;
use Illuminate\Support\Facades\Auth;

class InvoiceController extends Controller
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
        if($status == 0) {
            $invoices = Invoice::where('invoices.user_id', $userid)
            ->where('status', 0)
            ->join('clients', 'invoices.client_id', '=', 'clients.id')
            ->select('clients.*','invoices.*', 'clients.user_id as client_user_id')
            ->paginate(10);
        }else {
            $invoices = Invoice::where('invoices.user_id', $userid)
            ->where('status', 1)
            ->join('clients', 'invoices.client_id', '=', 'clients.id')
            ->select('clients.*','invoices.*', 'clients.user_id as client_user_id')
            ->paginate(10);
        }
        if (sizeof($invoices)) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully fetch invoices list',
                'invoices' => $invoices
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Data not available',
                'invoices' => []
            ], 200);
        }
    }

    public function search(Request $request)
    {
        $userid = $request->user()->id;
        $status = $request->status;
        $search = $request->search;
        $results = [];
        if($status == 0) {
            $invoices = Invoice::where('invoices.user_id', $userid)
            ->join('clients', 'invoices.client_id', '=', 'clients.id')
            ->where('invoices.status', '!=',1)
            ->where(function ($query) use($search) {
                $query->where('clients.name', 'like', '%' . $search . '%')
                   ->orWhere('clients.address', 'like', '%' . $search . '%')
                   ->orWhere('invoices.po_number', 'like', '%' . $search . '%');
            })
            ->select('clients.*','invoices.*', 'clients.user_id as client_user_id')
            ->paginate(10);
        }else {
            $invoices = Invoice::where('invoices.user_id', $userid)
            ->join('clients', 'invoices.client_id', '=', 'clients.id')
            ->where('invoices.status', $status)
            ->where(function ($query) use($search) {
                $query->where('clients.name', 'like', '%' . $search . '%')
                   ->orWhere('clients.address', 'like', '%' . $search . '%')
                   ->orWhere('invoices.po_number', 'like', '%' . $search . '%');
            })
            ->select('clients.*','invoices.*', 'clients.user_id as client_user_id')
            ->paginate(10);
        }
        if ($invoices) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully fetch list',
                'invoices' => $invoices
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Something went wrong',
                'invoices' => $invoices
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
            return Excel::download(new InvoicesExport($data), 'invoices.csv');
            return response()->json([
                'status' => TRUE,
                'message' => 'Successfully export'
            ], 200);
        } catch (\Throwable $th) {
            return $th;
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


    public function create(Request $request)
    {
        // dd($request->all());
        $id = $request->user()->id;
        $request->items = json_decode($request->items);
        // $request->forms = json_decode($request->forms);

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

        $create_invoice = Invoice::create([
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
        if($create_invoice){
            foreach ($request->items as $key => $item) {
                $create_items = InvoiceItem::create([
                    'invoice_id' => $create_invoice->id,
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

                'invoice_id' => $create_invoice->id,

            ];

            if($request->hasFile('attachments')){
                foreach ($request->attachments as $key => $value) {
                    $fileName = date("Ymd-his") .rand(6,9999).'.'.$value->extension();
                    $value->move(public_path('uploads/'), $fileName);
                    $path = $fileName;
                    $invoice_document = new InvoiceDocument();
                    $invoice_document->invoice_id = $create_invoice->id;
                    $invoice_document->document_type = "attachments";
                    $invoice_document->file_url = $path;
                    $invoice_document->save();
                }
            }

            if($request->hasFile('photos')){
                foreach ($request->photos as $key => $value) {
                    $fileName = date("Ymd-his") .rand(6,9999).'.'.$value->extension();
                    $value->move(public_path('uploads/'), $fileName);
                    $path = $fileName;
                    $invoice_photos = new InvoiceDocument();
                    $invoice_photos->invoice_id = $create_invoice->id;
                    $invoice_photos->document_type = "photos";
                    $invoice_photos->file_url = $path;
                    $invoice_photos->save();
                }
            }

            if ($create_invoice) {
                // return view('emails.invoice')->with(['details' => $details]);

                \Mail::to($request->client_email)->send(new \App\Mail\InvoiceMail($details));
                $client_detail = Client::find($request->client_id);
                $mobile = $client_detail->mobile;
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'You have received an invoice email. Please check your email. Thanks',
                        "to" => $mobile
                ];
                $curl_response = $this->sendsms($post_data);
                return response()->json([
                    'status' => TRUE,
                    'message' => 'Successfully create invoice'
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
        $invoice_id = $request->invoiceid;
        $invoice = Invoice::where('user_id', $user->id)
        ->where('id', $invoice_id)
        ->with(['documents', 'items'])
        ->first();
        if ($invoice) {
            return response()->json([
                'status' => TRUE,
                'message' => 'Fetch invoice',
                'data' => $invoice
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Record not found',
                'data' => $invoice
            ], 200);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function downloadInvoice($invoiceid, $userid)
    {
        $invoice = Invoice::where('id', $invoiceid)
        ->with(['client', 'documents', 'items'])
        ->first();
        $company = CompanyDetail::where('id', $userid)->first();
        $license = LicenseWebLink::where('id', $userid)->first();
        $client_detail = Client::find($invoice->client_id);
        // dd($invoice);
        if ($invoice) {
            $invoice->email_status = 1;
            $invoice->save();
            if($company){
                $mobile = $company->phone;
                $post_data = [];
                $post_data['messages'][] = [
                        "from" => 'ClickSend',
                        "body" => 'Invoice #'.$invoice->id.' has been viewed by client',
                        "to" => $mobile
                ];
                $curl_response = $this->sendsms($post_data);
            }
            return view('emails.pdfInvoice', compact(['invoice', 'company', 'license']));
            // $pdf = PDF::loadview('emails.pdfInvoice', compact('invoice'));
            // $pdf->setPaper('A4', 'potrate');
            // return $pdf->download('invoice.pdf');
        }
    }

    public function sendEmail(Request $request)
    {
        $user_id = $request->user()->id;
        $type = $request->type;
        if ($type == 'invoice') {
            $invoice_id = $request->invoice_id;
            $invoice = Invoice::find($invoice_id);
            $client = Client::find($invoice->client_id);
            $details = [

                'title' => 'Invoice',

                'user_id' => $user_id,

                'invoice_id' => $invoice_id,

            ];
            \Mail::to($client->email)->send(new \App\Mail\InvoiceMail($details));

            $mobile = $client->mobile;
            $post_data = [];
            $post_data['messages'][] = [
                    "from" => 'ClickSend',
                    "body" => 'You have received an email. Please check your email. Thanks',
                    "to" => $mobile
            ];
            $curl_response = $this->sendsms($post_data);
            return response()->json([
                'status' => TRUE,
                'message' => 'Invoice email send successfully'
            ], 200);
        }elseif ($type == 'estimate'){
            $estimate_id = $request->estimate_id;
            $estimate = Estimate::find($estimate_id);
            $client = Client::find($estimate->client_id);
            // $request->forms = json_decode($request->forms);
            $details = [

                'title' => 'Estimate',

                // 'forms' => json_decode($estimate->forms),

                'user_id' => $user_id,

                'estimate_id' => $estimate_id,

            ];
            \Mail::to($client->email)->send(new \App\Mail\EstimateMail($details));

            $mobile = $client->mobile;
            $post_data = [];
            $post_data['messages'][] = [
                    "from" => 'ClickSend',
                    "body" => 'You have received an estimate email. Please check your email. Thanks',
                    "to" => $mobile
            ];
            $curl_response = $this->sendsms($post_data);
            return response()->json([
                'status' => TRUE,
                'message' => 'Estimate email send successfully'
            ], 200);
        }else{
            return response()->json([
                'status' => FALSE,
                'message' => 'Something went wrong'
            ], 200);
        }
    }

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

        $invoice = Invoice::find($request->invoice_id);
        if($invoice){
            $invoice->po_number = $request->po_number;
            $invoice->days_to_pay = $request->days_to_pay;
            $invoice->markup = $request->markup;
            $invoice->subtotal = $request->subtotal;
            $invoice->tax = $request->tax;
            $invoice->discount = $request->discount;
            $invoice->total = $request->total;
            $invoice->date = $request->date;
            $invoice->notes = $request->notes;
            // $invoice->forms = json_encode($request->forms);
            $invoice->email_status = 0;
            $invoice->save();

            // for invoice items

            $old_items = InvoiceItem::where('invoice_id', $invoice->id)->get();
            foreach ($old_items as $old_item) {
                $old_item->delete();
            }

            foreach ($request->items as $key => $item) {
                $create_items = InvoiceItem::create([
                    'invoice_id' => $invoice->id,
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

                'invoice_id' => $invoice->id,

            ];

            // for invoice documents

            if($request->hasFile('attachments')){
                foreach ($request->attachments as $key => $value) {
                    $fileName = date("Ymd-his") .rand(6,9999).'.'.$value->extension();
                    $value->move(public_path('uploads/'), $fileName);
                    $path = $fileName;
                    $invoice_document = new InvoiceDocument();
                    $invoice_document->invoice_id = $invoice->id;
                    $invoice_document->document_type = "attachments";
                    $invoice_document->file_url = $path;
                    $invoice_document->save();
                }
            }

            if($request->hasFile('photos')){
                foreach ($request->photos as $key => $value) {
                    $fileName = date("Ymd-his") .rand(6,9999).'.'.$value->extension();
                    $value->move(public_path('uploads/'), $fileName);
                    $path = $fileName;
                    $invoice_photos = new InvoiceDocument();
                    $invoice_photos->invoice_id = $invoice->id;
                    $invoice_photos->document_type = "photos";
                    $invoice_photos->file_url = $path;
                    $invoice_photos->save();
                }
            }

            if ($invoice) {
                // return view('emails.invoice')->with(['details' => $details]);

                // \Mail::to($request->client_email)->send(new \App\Mail\InvoiceMail($details));
                return response()->json([
                    'status' => TRUE,
                    'message' => 'Successfully update invoice'
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
        $old_doc = InvoiceDocument::find($request->id);
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

        $invoice = Invoice::where('id',$request->id)->with('documents')->first();
        if ($invoice) {
            foreach ($invoice->documents as $value) {
                unlink(public_path().'/uploads/'.$value->getRawOriginal('file_url'));
            }
            $invoice->delete();
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
