<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CaPreliminaryNoticeFill extends Model
{
    protected $table = 'ca_preliminary_notice_fill';

    protected $fillable = [
        'user_id',
        'form_no',
        'email',
        'mobile',
        'owner_name',
        'owner_address',
        'owner_city',
        'owner_state',
        'owner_zip',
        'direct_contractor_name',
        'direct_contractor_address',
        'direct_contractor_city',
        'direct_contractor_state',
        'direct_contractor_zip',
        'contractor_leader_name',
        'contractor_leader_address',
        'contractor_leader_city',
        'contractor_leader_state',
        'contractor_leader_zip',
        'other_name',
        'other_address',
        'other_city',
        'other_state',
        'other_zip',
        'company_name',
        'company_address',
        'company_license',
        'company_phone',
        'company_city',
        'company_state',
        'company_zip',
        'company_services',
        'property_address',
        'property_city',
        'property_state',
        'property_zip',
        'property_apn',
        'amount_of',
        'contract_name',
        'contract_address',
        'contract_license',
        'contract_phone',
        'contract_city',
        'contract_state',
        'contract_zip',
        'prof_provider_name',
        'personal_delivery_status',
        'prof_name',
        'prof_address',
        'prof_date',
        'prof_time',
        'personal_delivery_status_2',
        'prof_name_2',
        'prof_address_2',
        'prof_date_2',
        'prof_time_2',
        'pursuant_status',
        'pursuant',
        'signed_date',
        'signature'
    ];
}
