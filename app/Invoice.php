<?php

namespace App;
use Illuminate\Support\Facades\File;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Invoice extends Model
{
    protected $guarded = [];

    public static function invoiceMonthDateSum($status,$year,$month){
        $user_id = Auth::user()->id;
        return Invoice::select('total')
        ->where('user_id', $user_id)
        ->where('status', $status)
        ->whereYear('date',$year)
        ->whereMonth('date',$month)
        ->sum('total');
    }

    public function documents(){
        return $this->hasMany(InvoiceDocument::class,'invoice_id','id');
    }

    public function items(){
        return $this->hasMany(InvoiceItem::class,'invoice_id','id');
    }

    public function client(){
        return $this->hasOne(Client::class,'id','client_id');
    }
}
