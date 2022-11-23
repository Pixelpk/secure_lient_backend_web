<?php

namespace App\Exports;

use App\Client;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ClientsExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */

    protected $id;

    function __construct($userid) {
            $this->userid = $userid;
    }

    public function headings(): array
    {
        return [
            'ID',
            'Name',
            'Email',
            'Mobile',
            'Other Mobile',
            'Address',
            'Address 2',
            'City',
            'State',
            'Postel Code',
            'Note',
        ];
    }

    public function collection()
    {
        return Client::select('id', 'name', 'email', 'mobile', 'other_mobile', 'address', 'address2', 'city', 'state', 'postel_code', 'note')
        ->where('user_id', $this->userid)
        ->get();
    }
}
