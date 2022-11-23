<?php

namespace App\Exports;

use App\Invoice;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class InvoicesExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */

    protected $id;

    function __construct($data) {
        $this->userid = $data['userid'];
        $this->from_date = $data['from_date'];
        $this->to_date = $data['to_date'];
        $this->status = $data['status'];
    }

    public function headings(): array
    {
        return [
            'ID',
            'Client Name',
            'PO #',
            'Total',
            'Issue Date',
            'Created Date',
        ];
    }

    public function collection()
    {
        if($this->status == 0) {
            return Invoice::join('clients', 'invoices.client_id', '=', 'clients.id')
            ->select(array('invoices.id','clients.name','invoices.po_number','invoices.total','invoices.date','invoices.created_at'))
            ->where('invoices.user_id', $this->userid)
            ->where('status', '!=',1)
            ->whereBetween('date',[$this->from_date,$this->to_date])
            ->get();
        }else{
            return Invoice::join('clients', 'invoices.client_id', '=', 'clients.id')
            ->select(array('invoices.id','clients.name','invoices.po_number','invoices.total','invoices.date','invoices.created_at'))
            ->where('invoices.user_id', $this->userid)
            ->where('status', $this->status)
            ->whereBetween('date',[$this->from_date,$this->to_date])
            ->get();
        }
    }
}
