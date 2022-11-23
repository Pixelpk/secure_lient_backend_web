<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
        <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
    </head>
    <body>
      <section id="form-section" class="form-section">
          <div class="container">
                <div class="text-end">
                    <button class="btn btn-success text-end" id="printPageButton" onclick="window.print();">Print Document</button>
                </div>
                <!-- FIELDS -->

                <form>
                    <div class="row">
                        <div>
                            <h3 class="text-center">CONDITIONAL WAIVER AND RELEASE ON PROGRESS PAYMENT</h3>
                            <p>
                                <b>NOTICE:</b> THIS DOCUMENT WAIVES THE CLAIMANT'S LIEN, STOP PAYMENT
                                NOTICE, AND PAYMENT BOND RIGHTS EFFECTIVE ON RECEIPT OF PAYMENT.
                                A PERSON SHOULD NOT RELY ON THIS DOCUMENT UNLESS SATISFIED THAT
                                THE CLAIMANT HAS RECEIVED PAYMENT.
                            </p>
                        </div>

                        <div class="d-grid mb-3">
                            <h4 class="text-center">Identifying Information</h4>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Name of Claimant:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Name of Claimant" name="claimant_name" value="{{ $form3->claimant_name }}" disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Name of Customer:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Name of Customer" name="customer_name" value="{{ $form3->customer_name }}" disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Job Location:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Job Location" name="job_location" value="{{ $form3->job_location }}" disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner" name="owner" value="{{ $form3->owner }}" disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Through Date:</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" placeholder="Through Date" name="through_date" value="{{ $form3->through_date }}" disabled>
                            </div>
                        </div>
                    </div>

                    <div>
                        <h3 class="text-center">Conditional Waiver and Release</h3>
                        <p>
                            This document waives and releases lien, stop payment notice, and payment bond rights the claimant has
                            for labor and service provided, and equipment and material delivered, to the customer on this job. Rights
                            based upon labor or service provided, or equipment or material delivered, pursuant to a written change
                            order that has been fully executed by the parties prior to the date that this document is signed by the
                            claimant, are waived and released by this document, unless listed as an Exception below. This document
                            is effective only on the claimant's receipt of payment from the financial institution on which the following
                            check is drawn:
                        </p>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Maker of Check:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Maker of Check" name="check_owner" value="{{ $form3->check_owner }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Amount of Check: $</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Amount of Check $" name="check_amount" value="{{ $form3->check_amount }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Check Payable to:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Check Payable to" name="check_payable_to" value="{{ $form3->check_payable_to }}" disabled>
                        </div>
                    </div>

                    <div>
                        <h3 class="text-center">Exceptions</h3>
                    </div>

                    <div class="container row mb-3">
                        <ol>
                            This document does not affect any of the following:
                            <li>Retentions.</li>
                            <li>Extras for which the claimant has not received payment.</li>
                            <li>The following progress payments for which the claimant has previously given a conditional waiver and release but has not received payment:</li>
                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label">Date(s) of waiver and release:</label>
                                    <div class="col-sm-10">
                                        <input type="date" class="form-control" placeholder="Date(s) of waiver and release" name="date_of_waiver" value="{{ $form3->date_of_waiver }}" disabled>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label">Amount(s) of unpaid progress payment(s): $</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="Amount(s) of unpaid progress payment(s) $" name="amount_of_unpaid_progress_payments" value="{{ $form3->amount_of_unpaid_progress_payments }}" disabled>
                                    </div>
                                </div>
                            </li>
                            <li>
                                Contract rights, including (A) a right based on rescission, abandonment, or breach of contract, and (B) the right to recover compensation for work not compensated by the payment.
                            </li>
                        </ol>
                    </div>

                    <div>
                        <h3 class="text-center">Signature</h3>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Claimant's Signature:</label>
                        <div id="signature-pad" class="m-signature-pad w-50">
                            <div class="m-signature-pad--body">
                                <img src="{{ asset($form3->signature) }}" width="250" height="150"/>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Claimant's Title:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Claimant's Title" name="claimant_title" value="{{ $form3->claimant_title }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Date of Signature:</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" placeholder="Date of Signature" name="signature_date" value="{{ $form3->signature_date }}" disabled>
                        </div>
                    </div>

                </form>
                <!-- /FIELDS -->
          </div>
      </section>
    </body>
    <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/js/jquery-3.6.0.min.js') }}"></script>

    <script>

    </script>
</html>
