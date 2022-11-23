<?php

namespace App\Exports;

use App\Item;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ItemsExport implements FromCollection, WithHeadings
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
            'Price',
            'Note',
        ];
    }

    public function collection()
    {
        return Item::select('id', 'name', 'price', 'note')->where('user_id', $this->userid)->get();
    }
}
