<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');
    Route::post('forgot', 'AuthController@forgot');
    Route::post('reset', 'AuthController@reset');
    Route::post('reset-password', 'AuthController@resetPassword');

    Route::group([
      'middleware' => 'auth:api'
    ], function() {
        Route::get('logout', 'AuthController@logout');
        // Super Admin
        Route::get('get-users', 'SuperAdminController@index');
        Route::get('get-subscribe-users', 'SuperAdminController@subscribeUsers');
        Route::get('get-superadmin-dashboard-data', 'SuperAdminController@dashboardData');

        // Clients
        Route::get('get-clients/{userid}', 'Client\ClientController@index');
        Route::post('create-client', 'Client\ClientController@create');
        Route::post('client-edit', 'Client\ClientController@update');
        Route::get('client-detail/{id}', 'Client\ClientController@show');
        Route::post('client-delete', 'Client\ClientController@destroy');
        Route::post('import-client/{userid}', 'Client\ClientController@import');
        Route::get('export-client/{userid}', 'Client\ClientController@export');
        Route::get('download-sample-client', 'Client\ClientController@downloadfile');
        // Items
        Route::get('get-items/{userid}', 'Item\ItemController@index');
        Route::post('create-item', 'Item\ItemController@create');
        Route::post('update-item', 'Item\ItemController@update');
        Route::get('item-detail/{id}', 'Item\ItemController@show');
        Route::post('item-delete', 'Item\ItemController@destroy');
        Route::post('import-item/{userid}', 'Item\ItemController@import');
        Route::get('export-item/{userid}', 'Item\ItemController@export');
        Route::get('download-sample-item', 'Item\ItemController@downloadfile');
        // Taxes
        Route::get('get-taxes', 'Tax\TaxController@index');
        Route::post('create-tax', 'Tax\TaxController@create');
        Route::post('update-tax', 'Tax\TaxController@update');
        Route::post('delete-tax', 'Tax\TaxController@destroy');
        // Invoices
        Route::post('get-invoices', 'Invoice\InvoiceController@index');
        Route::get('show-invoice/{invoiceid}', 'Invoice\InvoiceController@show');
        Route::post('get-search-invoices', 'Invoice\InvoiceController@search');
        Route::post('export-invoices', 'Invoice\InvoiceController@export');
        Route::post('save-invoice', 'Invoice\InvoiceController@create');
        Route::post('update-invoice', 'Invoice\InvoiceController@update');
        Route::post('delete-invoice', 'Invoice\InvoiceController@destroy');
        Route::post('delete-invoice-doc', 'Invoice\InvoiceController@destroyDoc');
        // Estimates
        Route::post('get-estimates', 'Estimate\EstimateController@index');
        Route::get('show-estimate/{estimateid}', 'Estimate\EstimateController@show');
        Route::post('get-search-estimates', 'Estimate\EstimateController@search');
        Route::post('export-estimates', 'Estimate\EstimateController@export');
        Route::post('save-estimate', 'Estimate\EstimateController@create');
        Route::post('update-estimate', 'Estimate\EstimateController@update');
        Route::post('delete-estimate', 'Estimate\EstimateController@destroy');
        Route::post('delete-estimate-doc', 'Estimate\EstimateController@destroyDoc');
        // Contract Forms
        Route::get('get-contracts/{userid}', 'ContractFormController@index');
        Route::post('create-contract', 'ContractFormController@create');
        Route::post('contract-delete', 'ContractFormController@destroy');
        Route::post('sent-email-lies-form', 'ContractFormController@mail');
        // List Clients Form
        Route::post('client-forms', 'FormController@ListSubmitForms');

        Route::post('send-client-forms', 'SendFormController@ListSubmitForms');

        // Total invoices and estimates
        Route::get('get-total-records', 'ReportController@totalRecords');

        // Reports
        Route::get('get-dashboard-data', 'ReportController@dashboard');
        Route::get('get-revenue-data', 'ReportController@revenue');
        Route::get('get-invoice-data', 'ReportController@invoice');
        Route::get('get-estimate-data', 'ReportController@estimate');

        // Setting
        Route::post('update-profile', 'AuthController@updateProfile');
        Route::get('get-company-profile', 'AuthController@getCompanyProfile');
        Route::post('create-company-profile', 'AuthController@companyCreate');
        Route::post('update-company-profile', 'AuthController@companyUpdate');

        // License and web links
        Route::get('get-license-web-links', 'LicenseWebController@show');
        Route::post('create-license', 'LicenseWebController@create');
        Route::post('update-license', 'LicenseWebController@update');

        // Send email
        Route::post('send-email', 'Invoice\InvoiceController@sendEmail');
        // Subscription
        Route::post('subscribe', 'PaymentController@createSubscription');
        Route::post('cancel-subscribe', 'PaymentController@cancelSubscription');
        Route::get('check-user-subscription', 'PaymentController@checkSubscription');
        Route::post('send-payment', 'PaymentController@sendPayment');
        Route::post('check-payment', 'PaymentController@checkPayment');

        // Send form to client email
        Route::post('send-form-client', 'SendFormController@sendEmail');

    });


