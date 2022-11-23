<?php

namespace App\Http\Controllers;

use App\Invoice;
use Illuminate\Http\Request;
use DateTime;
use App\User;
use App\Subscribe;
use Illuminate\Support\Facades\Validator;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Crypt;
use net\authorize\api\contract\v1 as AnetAPI;
use net\authorize\api\controller as AnetController;

class PaymentController extends Controller
{
    public function index()
    {
        return view('payment');
    }

    function createSubscription(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'card' => 'required',
            'year' => 'required',
            'month' => 'required',
            'type' => 'required',
            'fname' => 'required',
            'lname' => 'required',
        ]);
        if ($validator->fails()) {
            return  response()->json([
                'status' => false,
                'message' => 'Fileds required!',
                'errors' => $validator->errors()
            ]);
        }

        $card = $request->card;
        $exp_date = $request->year.'-'.$request->month;
        $type = $request->type;
        $price = ($request->type == 'Monthly' ? 25.99 : 280);
        $fname = $request->fname;
        $lname = $request->lname;
        $date = date('Y-m-d');
        $invoice_no = uniqid();

        // $intervalLength = 30;
        $intervalLength = ($request->type == 'Monthly' ? 30 : 365);
        /* Create a merchantAuthenticationType object with authentication details
        retrieved from the constants file */
        $merchantAuthentication = new AnetAPI\MerchantAuthenticationType();
        $merchantAuthentication->setName(env('MERCHANT_LOGIN_ID'));
        $merchantAuthentication->setTransactionKey(env('MERCHANT_TRANSACTION_KEY'));

        // Set the transaction's refId
        $refId = 'ref' . time();

        // Subscription Type Info
        $subscription = new AnetAPI\ARBSubscriptionType();
        $subscription->setName($type);

        $interval = new AnetAPI\PaymentScheduleType\IntervalAType();
        $interval->setLength($intervalLength);
        $interval->setUnit("days");

        $paymentSchedule = new AnetAPI\PaymentScheduleType();
        $paymentSchedule->setInterval($interval);
        $paymentSchedule->setStartDate(new DateTime($date));
        $paymentSchedule->setTotalOccurrences("9999");
        $paymentSchedule->setTrialOccurrences("1");

        $subscription->setPaymentSchedule($paymentSchedule);
        $subscription->setAmount($price);
        $subscription->setTrialAmount("0.00");

        $creditCard = new AnetAPI\CreditCardType();
        $creditCard->setCardNumber($card);
        $creditCard->setExpirationDate($exp_date);

        $payment = new AnetAPI\PaymentType();
        $payment->setCreditCard($creditCard);
        $subscription->setPayment($payment);

        $order = new AnetAPI\OrderType();
        $order->setInvoiceNumber($invoice_no);
        $order->setDescription("User purchase membership for secure lien release");
        $subscription->setOrder($order);

        $billTo = new AnetAPI\NameAndAddressType();
        $billTo->setFirstName($fname);
        $billTo->setLastName($lname);

        $subscription->setBillTo($billTo);

        $request2 = new AnetAPI\ARBCreateSubscriptionRequest();
        $request2->setmerchantAuthentication($merchantAuthentication);
        $request2->setRefId($refId);
        $request2->setSubscription($subscription);
        $controller = new AnetController\ARBCreateSubscriptionController($request2);

        $response = $controller->executeWithApiResponse( \net\authorize\api\constants\ANetEnvironment::SANDBOX);

        if (($response == null) || ($response->getMessages()->getResultCode() != "Ok") )
        {
            return  response()->json([
                'status' => false,
                'message' => 'Something went wrong subscription failed!',
            ]);
        }

        DB::beginTransaction();
        try {
            Subscribe::create([
                'user_id' => $request->user()->id,
                'sub_type' => $type,
                'sub_id' => $response->getSubscriptionId()
            ]);
            $user = User::find($request->user()->id);
            $user->status = "premium";
            $user->save();

            DB::commit();
            return  response()->json([
                'status' => true,
                'message' => 'Successfully subscribed package!',
            ]);
        } catch (Exception $exp) {
            DB::rollBack();
            return  response()->json([
                'status' => false,
                'message' => $exp->getMessage(),
            ]);
        }

        // return $response;
    }

    public function checkSubscription(Request $request)
    {
        $email = $request->user()->email;
        $getuser = User::with('subscriptionDetail')->where('email', $email)->first();
        if ($getuser->subscriptionDetail != null) {
            $subscriptionId = $getuser->subscriptionDetail->sub_id;

            $merchantAuthentication = new AnetAPI\MerchantAuthenticationType();
            $merchantAuthentication->setName(env('MERCHANT_LOGIN_ID'));
            $merchantAuthentication->setTransactionKey(env('MERCHANT_TRANSACTION_KEY'));

            // Set the transaction's refId
            $refId = 'ref' . time();

            $request_sub = new AnetAPI\ARBGetSubscriptionStatusRequest();
            $request_sub->setMerchantAuthentication($merchantAuthentication);
            $request_sub->setRefId($refId);
            $request_sub->setSubscriptionId($subscriptionId);

            $controller = new AnetController\ARBGetSubscriptionStatusController($request_sub);

            $response = $controller->executeWithApiResponse( \net\authorize\api\constants\ANetEnvironment::SANDBOX);
            if ($response->getMessages()->getResultCode() == 'Error') {
                $subscribe = Subscribe::where('sub_id', $subscriptionId)->first();
                $subscribe->status = 0;
                $getuser->status = 'user';
                $getuser->save();
                $subscribe->save();
                return response()->json([
                    'status' => false,
                    'message' => 'Subscription end',
                    'user' => $getuser,
                ]);
            }
        }else{
            return response()->json([
                'status' => true,
                'message' => 'Subscription active',
                'user' => $getuser,
            ]);
        }
    }

    function cancelSubscription(Request $request)
    {
        $subscriptionId = $request->sub_id;
        $merchantAuthentication = new AnetAPI\MerchantAuthenticationType();
        $merchantAuthentication->setName(env('MERCHANT_LOGIN_ID'));
        $merchantAuthentication->setTransactionKey(env('MERCHANT_TRANSACTION_KEY'));

        // Set the transaction's refId
        $refId = 'ref' . time();

        $request = new AnetAPI\ARBCancelSubscriptionRequest();
        $request->setMerchantAuthentication($merchantAuthentication);
        $request->setRefId($refId);
        $request->setSubscriptionId($subscriptionId);

        $controller = new AnetController\ARBCancelSubscriptionController($request);

        $response = $controller->executeWithApiResponse( \net\authorize\api\constants\ANetEnvironment::SANDBOX);

        if (($response != null) && ($response->getMessages()->getResultCode() == "Ok"))
        {
            $subscribe = Subscribe::where('sub_id', $subscriptionId)->first();
            $user = User::where('id', $subscribe->user_id)->first();
            $subscribe->status = 0;
            $user->status = 'user';
            $subscribe->save();
            $user->save();
            return  response()->json([
                'status' => true,
                'message' => 'Successfully canceled!',
            ]);
        }
        else
        {
            return  response()->json([
                'status' => false,
                'message' => 'Not canceled!',
            ]);
        }
    }

    function sendPayment(Request $request)
    {
        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'address' => 'required',
            'card_no' => 'required',
            'month' => 'required',
            'year' => 'required',
            'cvc' => 'required',
        ]);
        $invoice = Invoice::where('id', $request->uuid)->with(['client'])->first();
        if($invoice->status == 1){
            return redirect()->back()->with('error', 'Invoice already paid!');
        }
        $amount = $request->total;
        /* Create a merchantAuthenticationType object with authentication details
        retrieved from the constants file */
        $merchantAuthentication = new AnetAPI\MerchantAuthenticationType();
        $merchantAuthentication->setName(env('MERCHANT_LOGIN_ID'));
        $merchantAuthentication->setTransactionKey(env('MERCHANT_TRANSACTION_KEY'));

        // Set the transaction's refId
        $refId = 'ref' . time();

        // Create the payment data for a credit card
        $creditCard = new AnetAPI\CreditCardType();
        $creditCard->setCardNumber($request->card_no);
        // $creditCard->setExpirationDate("2038-12");
        $creditCard->setExpirationDate($request->year."-".$request->month);
        $creditCard->setCardCode($request->cvc);

        // Add the payment data to a paymentType object
        $paymentOne = new AnetAPI\PaymentType();
        $paymentOne->setCreditCard($creditCard);

        // Create order information
        $order = new AnetAPI\OrderType();
        $order->setInvoiceNumber($request->uuid);
        $order->setDescription("Invoice Payment");

        // Set the customer's Bill To address
        $customerAddress = new AnetAPI\CustomerAddressType();
        $customerAddress->setFirstName($request->first_name);
        $customerAddress->setLastName($request->last_name);
        $customerAddress->setAddress($request->address);
        $customerAddress->setCountry("UK");

        // Set the customer's identifying information
        $customerData = new AnetAPI\CustomerDataType();
        $customerData->setType("individual");
        $customerData->setId($invoice->client_id);
        $customerData->setEmail($invoice->client->email);

        // Add values for transaction settings
        $duplicateWindowSetting = new AnetAPI\SettingType();
        $duplicateWindowSetting->setSettingName("duplicateWindow");
        $duplicateWindowSetting->setSettingValue("60");

        // Add some merchant defined fields. These fields won't be stored with the transaction,
        // but will be echoed back in the response.
        $merchantDefinedField1 = new AnetAPI\UserFieldType();
        $merchantDefinedField1->setName("customerLoyaltyNum");
        $merchantDefinedField1->setValue("1128836273");

        $merchantDefinedField2 = new AnetAPI\UserFieldType();
        $merchantDefinedField2->setName("favoriteColor");
        $merchantDefinedField2->setValue("blue");

        // Create a TransactionRequestType object and add the previous objects to it
        $transactionRequestType = new AnetAPI\TransactionRequestType();
        $transactionRequestType->setTransactionType("authCaptureTransaction");
        $transactionRequestType->setAmount($amount);
        $transactionRequestType->setOrder($order);
        $transactionRequestType->setPayment($paymentOne);
        $transactionRequestType->setBillTo($customerAddress);
        $transactionRequestType->setCustomer($customerData);
        $transactionRequestType->addToTransactionSettings($duplicateWindowSetting);
        $transactionRequestType->addToUserFields($merchantDefinedField1);
        $transactionRequestType->addToUserFields($merchantDefinedField2);

        // Assemble the complete transaction request
        $request = new AnetAPI\CreateTransactionRequest();
        $request->setMerchantAuthentication($merchantAuthentication);
        $request->setRefId($refId);
        $request->setTransactionRequest($transactionRequestType);

        // Create the controller and get the response
        $controller = new AnetController\CreateTransactionController($request);
        $response = $controller->executeWithApiResponse(\net\authorize\api\constants\ANetEnvironment::SANDBOX);


        if ($response != null) {
            // Check to see if the API request was successfully received and acted upon
            if ($response->getMessages()->getResultCode() == "Ok") {
                // Since the API request was successful, look for a transaction response
                // and parse it to display the results of authorizing the card
                $tresponse = $response->getTransactionResponse();

                if ($tresponse != null && $tresponse->getMessages() != null) {
                    $invoice->status = 1;
                    $invoice->transection_id = $tresponse->getTransId();
                    $invoice->save();
                    return redirect()->back()->with('success', 'Invoice sucessfully paid!');
                } else {
                    return redirect()->back()->with('error', 'Invoice payment failed!');
                }

            } else {
                return redirect()->back()->with('error', 'Invoice payment failed!');
            }
        } else {
            return redirect()->back()->with('error', '"No response returned!');
        }

        return $response;
    }

    function checkPayment(Request $request)
    {
        $transactionId = $request->id;
        /* Create a merchantAuthenticationType object with authentication details
        retrieved from the constants file */
        $merchantAuthentication = new AnetAPI\MerchantAuthenticationType();
        $merchantAuthentication->setName(env('MERCHANT_LOGIN_ID'));
        $merchantAuthentication->setTransactionKey(env('MERCHANT_TRANSACTION_KEY'));

        // Set the transaction's refId
        // The refId is a Merchant-assigned reference ID for the request.
        // If included in the request, this value is included in the response.
        // This feature might be especially useful for multi-threaded applications.
        $refId = 'ref' . time();

        $request = new AnetAPI\GetTransactionDetailsRequest();
        $request->setMerchantAuthentication($merchantAuthentication);
        $request->setTransId($transactionId);

        $controller = new AnetController\GetTransactionDetailsController($request);

        $response = $controller->executeWithApiResponse( \net\authorize\api\constants\ANetEnvironment::SANDBOX);

        if (($response != null) && ($response->getMessages()->getResultCode() == "Ok"))
        {
            echo "SUCCESS: Transaction Status:" . $response->getTransaction()->getTransactionStatus() . "\n";
            echo "                Auth Amount:" . $response->getTransaction()->getAuthAmount() . "\n";
            echo "                   Trans ID:" . $response->getTransaction()->getTransId() . "\n";
        }
        else
        {
            echo "ERROR :  Invalid response\n";
            $errorMessages = $response->getMessages()->getMessage();
            echo "Response : " . $errorMessages[0]->getCode() . "  " .$errorMessages[0]->getText() . "\n";
        }

        return $response;
    }

}
