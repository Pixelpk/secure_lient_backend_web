<?php

namespace App\Imports;

use App\Item;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class ItemsImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */

    protected $id;

    function __construct($userid) {
            $this->userid = $userid;
    }

    public function model(array $row)
    {
        return new Item([
            'user_id' => $this->userid,
            'name'     => $row['name'],
            'price'    => $row['price'],
            'note'    => $row['note'],
        ]);
    }
}
