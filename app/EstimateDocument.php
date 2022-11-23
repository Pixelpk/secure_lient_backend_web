<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\URL;

class EstimateDocument extends Model
{
    protected $guarded = [];

    public function getFileUrlAttribute($value)
    {
        return URL::to('public/uploads/'.$value);
    }
}
