<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
        <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
        <link href="{{ asset('assets/css/select2.min.css') }}" rel="stylesheet">
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
                            <h3 class="text-center">UNCONDITIONAL WAIVER AND RELEASE ON FINAL PAYMENT</h3>
                            <p>
                                <b>NOTICE TO CLAIMANT:</b> THIS DOCUMENT WAIVES AND RELEASES LIEN, STOP
                                PAYMENT NOTICE, AND PAYMENT BOND RIGHTS UNCONDITIONALLY AND
                                STATES THAT YOU HAVE BEEN PAID FOR GIVING UP THOSE RIGHTS. THIS
                                DOCUMENT IS ENFORCEABLE AGAINST YOU IF YOU SIGN IT, EVEN IF YOU HAVE
                                NOT BEEN PAID. IF YOU HAVE NOT BEEN PAID, USE A CONDITIONAL WAIVER
                                AND RELEASE FORM.
                            </p>
                        </div>

                        <div class="d-grid mb-3">
                            <h4 class="text-center">Identifying Information</h4>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Name of Claimant:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Name of Claimant" name="claimant_name" value="{{ $form4->claimant_name }}" disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Name of Customer:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Name of Customer" name="customer_name" value="{{ $form4->customer_name }}" disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Job Location:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Job Location" name="job_location" value="{{ $form4->job_location }}" disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner" name="owner" value="{{ $form4->owner }}" disabled>
                            </div>
                        </div>
                    </div>

                    <div>
                        <h3 class="text-center">Unconditional Waiver and Release</h3>
                        <p>
                            This document waives and releases lien, stop payment notice, and payment bond rights the claimant
                            has for all labor and service provided, and equipment and material delivered, to the customer on this
                            job. Rights based upon labor or service provided, or equipment or material delivered, pursuant to a
                            written change order that has been fully executed by the parties prior to the date that this document is
                            signed by the claimant, are waived and released by this document, unless listed as an Exception
                            below. The claimant has been paid in full.
                        </p>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Maker of Check:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Maker of Check" name="check_owner" value="{{ $form4->check_owner }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Amount of Check: $</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Amount of Check $" name="check_amount" value="{{ $form4->check_amount }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Check Payable to: $</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Check Payable to" name="check_payable_to" value="{{ $form4->check_payable_to }}" disabled>
                        </div>
                    </div>

                    <div>
                        <h3 class="text-center">Exceptions</h3>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-4 col-form-label">This document does not affect any of the following:</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="$10,975.00 Total Paid" name="document_effect" value="{{ $form4->document_effect }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-4 col-form-label">Disputed claims for extras in the amount of: $</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="0.00" name="extra_amount" value="{{ $form4->extra_amount }}" disabled>
                        </div>
                    </div>

                    <div>
                        <h3 class="text-center">Signature</h3>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Claimant's Signature:</label>
                        <div id="signature-pad" class="m-signature-pad w-50">
                            <div class="m-signature-pad--body">
                                <img src="{{ asset($form4->signature) }}" width="250" height="150"/>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Claimant's Title:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Claimant's Title" name="claimant_title" value="{{ $form4->claimant_title }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Date of Signature:</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" placeholder="Date of Signature" name="signature_date" value="{{ $form4->signature_date }}" disabled>
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
