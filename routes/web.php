<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('clear-cache',function (){
    \Illuminate\Support\Facades\Artisan::call('config:cache');
    \Illuminate\Support\Facades\Artisan::call('cache:clear');
    \Illuminate\Support\Facades\Artisan::call('optimize:clear');
 });

Route::get('/', function () {
    return view('welcome');
});

// Save data
Route::match(['get','post'], '/form1/{user_id}', 'SendFormController@form1')->name('form1_data');
Route::match(['get','post'], '/form2/{user_id}', 'SendFormController@form2')->name('form2_data');
Route::match(['get','post'], '/form3/{user_id}', 'SendFormController@form3')->name('form3_data');
Route::match(['get','post'], '/form4/{user_id}', 'SendFormController@form4')->name('form4_data');
Route::match(['get','post'], '/form5/{user_id}', 'SendFormController@form5')->name('form5_data');
Route::match(['get','post'], '/form6/{user_id}', 'SendFormController@form6')->name('form6_data');
// View data
Route::get('/get-send-form1/{form_no}', 'SendFormController@form1Data');
Route::get('/get-send-form2/{form_no}', 'SendFormController@form2Data');
Route::get('/get-send-form3/{form_no}', 'SendFormController@form3Data');
Route::get('/get-send-form4/{form_no}', 'SendFormController@form4Data');
Route::get('/get-send-form5/{form_no}', 'SendFormController@form5Data');
Route::get('/get-send-form6/{form_no}', 'SendFormController@form6Data');
// Edit data
Route::match(['get','post'], '/edit-form1/{form_no}', 'SendFormController@editForm1Data');
Route::match(['get','post'], '/edit-form2/{form_no}', 'SendFormController@editForm2Data');
Route::match(['get','post'], '/edit-form3/{form_no}', 'SendFormController@editForm3Data');
Route::match(['get','post'], '/edit-form4/{form_no}', 'SendFormController@editForm4Data');
Route::match(['get','post'], '/edit-form5/{form_no}', 'SendFormController@editForm5Data');
Route::match(['get','post'], '/edit-form6/{form_no}', 'SendFormController@editForm6Data');


// Send Form Data
Route::match(['get','post'], 'data/form1/{user_id}/{email}', 'SendFormController@form1')->name('form1_data');
Route::match(['get','post'], 'data/form2/{user_id}/{email}', 'SendFormController@form2')->name('form2_data');
Route::match(['get','post'], 'data/form3/{user_id}/{email}', 'SendFormController@form3')->name('form3_data');
Route::match(['get','post'], 'data/form4/{user_id}/{email}', 'SendFormController@form4')->name('form4_data');
Route::match(['get','post'], 'data/form5/{user_id}/{email}', 'SendFormController@form5')->name('form5_data');

// View data
Route::get('/get-form1/{user_id}/{client_id}/{invoice_id}', 'FormController@form1Data');
Route::get('/get-form2/{user_id}/{client_id}/{invoice_id}', 'FormController@form2Data');
Route::get('/get-form3/{user_id}/{client_id}/{invoice_id}', 'FormController@form3Data');
Route::get('/get-form4/{user_id}/{client_id}/{invoice_id}', 'FormController@form4Data');
Route::get('/get-form5/{user_id}/{client_id}/{invoice_id}', 'FormController@form5Data');

// View Send Form data
// Route::get('/get-send-form1/{id}/{user_id}/{form_no}', 'SendFormController@form1Data');
// Route::get('/get-send-form2/{id}/{user_id}/{form_no}', 'SendFormController@form2Data');
// Route::get('/get-send-form3/{id}/{user_id}/{form_no}', 'SendFormController@form3Data');
// Route::get('/get-send-form4/{id}/{user_id}/{form_no}', 'SendFormController@form4Data');
// Route::get('/get-send-form5/{id}/{user_id}/{form_no}', 'SendFormController@form5Data');

// update status of invoice and estimate
Route::post('estimate-status', 'Estimate\EstimateController@estimateStatus')->name('estimate-status');

// Download pdf invoice
Route::get('download-invoice/{invoiceid}/{userid}', 'Invoice\InvoiceController@downloadInvoice');
Route::get('download-estimate/{estimateid}/{userid}', 'Estimate\EstimateController@downloadEstimate');

Route::get('/payment/{total}/{id}', 'PaymentController@index')->name('payment');
Route::post('/payment-send', 'PaymentController@sendPayment')->name('payment-send');

