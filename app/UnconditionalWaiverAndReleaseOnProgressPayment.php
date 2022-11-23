<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UnconditionalWaiverAndReleaseOnProgressPayment extends Model
{
    protected $table = "unconditional_waiver_and_release_on_progress_paymenyt";

    protected $fillable = [
        'user_id',
        'client_id',
        'invoice_id',
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
