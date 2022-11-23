<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdditionalWorkAuthorization extends Model
{
    protected $table = 'additional_work_authorization_fill';

    protected $fillable = [
        'user_id',
        'form_no',
        'email',
        'mobile',
        'owner_name',
        'owner_phone',
        'owner_date',
        'owner_address',
        'job_name',
        'job_no',
        'owner_city',
        'owner_state',
        'other_address',
        'existing_contract_no',
        'date_of_existing_contract',
        'other_city',
        'other_state',
        'note',
        'payment',
        'payment_note',
        'contractor_signature',
        'contractor_signed_date',
        'change_order_no'
    ];
}
