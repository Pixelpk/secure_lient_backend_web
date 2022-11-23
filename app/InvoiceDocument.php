<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\URL;

class InvoiceDocument extends Model
{
    protected $guarded = [];

    public function getFileUrlAttribute($value)
    {
        return URL::to('public/uploads/'.$value);
    }
}
