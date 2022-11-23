<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subscribe extends Model
{
    protected $guarded = [];
    protected $table = "subscriptions";
    protected $appends = ["renewdate"];

    public function getRenewDateAttribute() {
        if ($this->attributes['sub_type'] == 'Yearly') {
            $created_at = $this->attributes['created_at'];
            return date('d-M-Y', strtotime('+365 days',strtotime($created_at)));
        }else{
            $created_at = $this->attributes['created_at'];
            return date('d-M-Y', strtotime('+30 days',strtotime($created_at)));
        }
   }

    public function user(){
        return $this->hasOne(User::class,'id','user_id');
    }

    public function getStatusAttribute($value)
    {
        return ($value === 0) ? 'Deactive' : 'Active';
    }

    public function getCreatedAtAttribute($value)
    {
        return date('d-M-Y', strtotime($value));
    }
}
