<?php

namespace App\Exports;

use App\Estimate;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class EstimatesExport implements FromCollection, WithHeadings
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
        return Estimate::join('clients', 'estimates.client_id', '=', 'clients.id')
        ->select(array('estimates.id','clients.name','estimates.po_number','estimates.total','estimates.date','estimates.created_at'))
        ->where('estimates.user_id', $this->userid)
        ->where('status', $this->status)
        ->whereBetween('date',[$this->from_date,$this->to_date])
        ->get();
    }
}
