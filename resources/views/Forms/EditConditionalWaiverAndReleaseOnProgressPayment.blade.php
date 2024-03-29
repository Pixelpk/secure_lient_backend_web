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
                <!-- FIELDS -->

                @if(session()->has('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session()->get('success') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                @endif

                @if(session()->has('error'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ session()->get('error') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                @endif

                <form action="" method="POST" onSubmit="submitForm();" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <input type="hidden" name="form_no" value="{{ $form3->form_no }}"/>
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

                        <div class="col-md-6 mb-3">
                            <label class="form-label">Email:</label>
                            <input type="email" class="form-control" placeholder="Email" name="email" value="{{ $form3->email }}"  autofocus>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Mobile:</label>
                            <input type="tel" class="form-control" placeholder="+97000000000" name="mobile" value="{{ $form3->mobile }}" >
                        </div>
                        <div class="d-grid mb-3">
                            <h4 class="text-center">Identifying Information</h4>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Name of Claimant:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Name of Claimant" name="claimant_name" value="{{ $form3->claimant_name }}"  autofocus>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Name of Customer:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Name of Customer" name="customer_name" value="{{ $form3->customer_name }}" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Job Location:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Job Location" name="job_location" value="{{ $form3->job_location }}" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner" name="owner" value="{{ $form3->owner }}" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Through Date:</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" placeholder="Through Date" name="through_date" value="{{ $form3->through_date }}" >
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
                            <input type="text" class="form-control" placeholder="Maker of Check" name="check_owner" value="{{ $form3->check_owner }}" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Amount of Check: $</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Amount of Check $" name="check_amount" value="{{ $form3->check_amount }}" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Check Payable to:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Check Payable to" name="check_payable_to" value="{{ $form3->check_payable_to }}" >
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
                                        <input type="date" class="form-control" placeholder="Date(s) of waiver and release" name="date_of_waiver" value="{{ $form3->date_of_waiver }}" >
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label">Amount(s) of unpaid progress payment(s): $</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="Amount(s) of unpaid progress payment(s) $" name="amount_of_unpaid_progress_payments" value="{{ $form3->amount_of_unpaid_progress_payments }}" >
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
                            <img src="{{ asset($form3->signature) }}" width="250" height="150"/>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Claimant's Title:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Claimant's Title" name="claimant_title" value="{{ $form3->claimant_title }}" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Date of Signature:</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" placeholder="Date of Signature" name="signature_date" value="{{ $form3->signature_date }}" disabled required>
                        </div>
                    </div>

                    <div class="mt-3 text-end">
                        <button type="submit" id="submit_btn" class="btn btn-success btn-lg">Save</button>
                        <button type="reset" class="btn btn-danger btn-lg">Clear</button>
                    </div>

                </form>
                <!-- /FIELDS -->
          </div>
      </section>
    </body>
    <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/js/jquery-3.6.0.min.js') }}"></script>
    <script src="{{ asset('assets/js/jquery.validate.min.js') }}"></script>
    <script src="{{ asset('assets/js/select2.min.js') }}"></script>
    <script src="{{ asset('assets/js/signature_pad.js') }}"></script>

    <script>
        //$('form').validate();
        $(document).ready(function() {
            $('.select2').select2();
        });

        //$("form").submit(function (e) {
            //if(signaturePad.isEmpty()){
                //alert("Please sign the document");
                //e.preventDefault();
                //return false;
            //}
        //});
    </script>

    <script type="text/javascript">
        var wrapper = document.getElementById("signature-pad"),
        canvas = wrapper.querySelector("canvas"),
        signaturePad;

        /**
        *  Behandlung der Größenänderung der Unterschriftenfelds
        */
        function resizeCanvas() {
            var oldContent = signaturePad.toData();
            var ratio =  Math.max(window.devicePixelRatio || 1, 1);
            canvas.width = canvas.offsetWidth * ratio;
            canvas.height = canvas.offsetHeight * ratio;
            canvas.getContext("2d").scale(ratio, ratio);
            signaturePad.clear();
            signaturePad.fromData(oldContent);
        }


        /**
        *  Speichern des Inhaltes als Bild
        */
        function download(filename) {
        var blob = dataURLToBlob(signaturePad.toDataURL());
        var url = window.URL.createObjectURL(blob);

        var a = document.createElement("a");
        a.style = "display: none";
        a.href = url;
        a.download = filename;

        document.body.appendChild(a);
        a.click();

        window.URL.revokeObjectURL(url);
        }

        /**
        * DataURL in Binär umwandeln
        */
        function dataURLToBlob(dataURL) {
        // Code von https://github.com/ebidel/filer.js
        var parts = dataURL.split(';base64,');
        var contentType = parts[0].split(":")[1];
        var raw = window.atob(parts[1]);
        var rawLength = raw.length;
        var uInt8Array = new Uint8Array(rawLength);

        for (var i = 0; i < rawLength; ++i) {
            uInt8Array[i] = raw.charCodeAt(i);
        }

        return new Blob([uInt8Array], { type: contentType });
        }

        /**
        * Behanlung beim Absenden, damit der Inhalt des Canvas
        * übermittelt werden kann, wird dieser als DataURL dem
        * versteckten Feld zugewiesen
        */
        function submitForm(e) {
            //Unterschrift in verstecktes Feld übernehmen
            document.getElementById('signature').value = signaturePad.toDataURL();
        }


        var signaturePad = new SignaturePad(canvas);
        signaturePad.minWidth = 1; //minimale Breite des Stiftes
        signaturePad.maxWidth = 1; //maximale Breite des Stiftes
        signaturePad.penColor = "#000000"; //Stiftfarbe
        signaturePad.backgroundColor = "#FFFFFF"; //Hintergrundfarbe

        window.onresize = resizeCanvas;
        resizeCanvas();

    </script>
</html>
