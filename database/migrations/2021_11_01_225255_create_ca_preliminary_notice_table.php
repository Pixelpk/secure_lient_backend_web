<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCaPreliminaryNoticeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ca_preliminary_notice', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id');
            $table->bigInteger('client_id');
            $table->string('owner_name');
            $table->string('owner_address');
            $table->string('owner_city');
            $table->string('owner_state');
            $table->string('owner_zip');
            $table->string('direct_contractor_name');
            $table->string('direct_contractor_address');
            $table->string('direct_contractor_city');
            $table->string('direct_contractor_state');
            $table->string('direct_contractor_zip');
            $table->string('contractor_leader_name');
            $table->string('contractor_leader_address');
            $table->string('contractor_leader_city');
            $table->string('contractor_leader_state');
            $table->string('contractor_leader_zip');
            $table->string('other_name')->nullable();
            $table->string('other_address')->nullable();
            $table->string('other_city')->nullable();
            $table->string('other_state')->nullable();
            $table->string('other_zip')->nullable();
            $table->string('company_name');
            $table->string('company_address');
            $table->string('company_license');
            $table->string('company_phone');
            $table->string('company_city');
            $table->string('company_state');
            $table->string('company_zip');
            $table->string('company_services');
            $table->string('property_address');
            $table->string('property_city');
            $table->string('property_state');
            $table->string('property_zip');
            $table->string('property_apn');
            $table->string('amount_of');
            $table->string('contract_name');
            $table->string('contract_address');
            $table->string('contract_license');
            $table->string('contract_phone');
            $table->string('contract_city');
            $table->string('contract_state');
            $table->string('contract_zip');
            $table->string('prof_provider_name');
            $table->string('personal_delivery_status');
            $table->string('prof_name');
            $table->string('prof_address');
            $table->string('prof_date');
            $table->string('prof_time');
            $table->string('personal_delivery_status_2');
            $table->string('prof_name_2');
            $table->string('prof_address_2');
            $table->string('prof_date_2');
            $table->string('prof_time_2');
            $table->string('pursuant_status');
            $table->date('signed_date');
            $table->string('signature');
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
        Schema::dropIfExists('ca_preliminary_notice');
    }
}
