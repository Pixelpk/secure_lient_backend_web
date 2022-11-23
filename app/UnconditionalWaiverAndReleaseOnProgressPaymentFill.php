<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UnconditionalWaiverAndReleaseOnProgressPaymentFill extends Model
{
    protected $table = "unconditional_waiver_and_release_on_progress_paymenyt_fill";

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
        'received_progress_amount',
        'signature',
        'claimant_title',
        'signature_date'
    ];
}
