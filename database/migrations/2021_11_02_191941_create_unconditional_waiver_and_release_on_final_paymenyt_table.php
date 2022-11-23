<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUnconditionalWaiverAndReleaseOnFinalPaymenytTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('unconditional_waiver_and_release_on_final_paymenyt', function (Blueprint $table) {
            $table->id();
            $table->string('claimant_name');
            $table->string('customer_name');
            $table->string('job_location');
            $table->string('owner');
            $table->string('check_owner');
            $table->string('check_amount');
            $table->string('check_payable_to');
            $table->string('document_effect');
            $table->string('extra_amount');
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
        Schema::dropIfExists('unconditional_waiver_and_release_on_final_paymenyt');
    }
}
