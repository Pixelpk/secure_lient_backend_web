<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ConditionalWaiverAndReleaseOnProgressPaymentFill extends Model
{
    protected $table = "conditional_waiver_and_release_on_progress_paymenyt_fill";

    protected $fillable = [
        'user_id',
        'form_no',
        'email',
        'mobile',
        'claimant_name',
        'customer_name',
        'job_location',
        'owner',
        'through_date',
        'check_owner',
        'check_amount',
        'check_payable_to',
        'date_of_waiver',
        'amount_of_unpaid_progress_payments',
        'signature',
        'claimant_title',
        'signature_date'
    ];
}
