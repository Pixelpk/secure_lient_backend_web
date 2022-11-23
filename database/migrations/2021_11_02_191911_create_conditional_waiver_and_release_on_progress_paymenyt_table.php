<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateConditionalWaiverAndReleaseOnProgressPaymenytTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('conditional_waiver_and_release_on_progress_paymenyt', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id');
            $table->bigInteger('client_id');
            $table->string('claimant_name');
            $table->string('customer_name');
            $table->string('job_location');
            $table->string('owner');
            $table->date('through_date');
            $table->string('check_owner');
            $table->string('check_amount');
            $table->string('check_payable_to');
            $table->string('date_of_waiver');
            $table->string('amount_of_unpaid_progress_payments');
            $table->string('signature');
            $table->string('claimant_title');
            $table->date('signature_date');
            $table->tinyInteger('status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('conditional_waiver_and_release_on_progress_paymenyt');
    }
}
