<?php

namespace App\Imports;

use App\Client;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class ClientsImport implements ToModel, WithHeadingRow
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
        return new Client([
            'user_id' => $this->userid,
            'name'     => $row['name'],
            'email'    => $row['email'],
            'mobile'    => $row['mobile'],
            'other_mobile'    => $row['other_mobile'],
            'address'    => $row['address'],
            'address2'    => $row['address2'],
            'city'    => $row['city'],
            'state'    => $row['state'],
            'postel_code'    => $row['postel_code'],
            'note'    => $row['note'],
        ]);
    }
}
