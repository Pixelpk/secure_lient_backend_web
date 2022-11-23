<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Estimate extends Model
{
    protected $guarded = [];

    public static function estimateMonthDateSum($status,$year,$month){
        $user_id = Auth::user()->id;
        return Estimate::select('total')
        ->where('user_id', $user_id)
        ->where('status', $status)
        ->whereYear('date',$year)
        ->whereMonth('date',$month)
        ->sum('total');
    }

    public function documents(){
        return $this->hasMany(EstimateDocument::class,'invoice_id','id');
    }

    public function items(){
        return $this->hasMany(EstimateItem::class,'invoice_id','id');
    }

    public function client(){
        return $this->hasOne(Client::class,'id','client_id');
    }
}
