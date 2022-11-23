<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UnconditionalWaiverAndReleaseOnFinalPaymentFill extends Model
{
    protected $table = "unconditional_waiver_and_release_on_final_paymenyt_fill";

    protected $fillable = [
        'user_id',
        'form_no',
        'email',
        'mobile',
        'claimant_name',
        'customer_name',
        'job_location',
        'owner',
        'check_owner',
        'check_amount',
        'check_payable_to',
        'document_effect',
        'extra_amount',
        'signature',
        'claimant_title',
        'signature_date'
    ];
}
