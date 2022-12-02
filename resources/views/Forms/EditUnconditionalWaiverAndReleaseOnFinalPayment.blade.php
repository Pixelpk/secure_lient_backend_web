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
                    <input type="hidden" name="form_no" value="{{ $form4->form_no }}"/>
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

                        <div class="col-md-6 mb-3">
                            <label class="form-label">Email:</label>
                            <input type="email" class="form-control" placeholder="Email" name="email" value="{{ $form4->email }}"  autofocus>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Mobile:</label>
                            <input type="tel" class="form-control" placeholder="+97000000000" name="mobile" value="{{ $form4->mobile }}" >
                        </div>
                        <div class="d-grid mb-3">
                            <h4 class="text-center">Identifying Information</h4>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Name of Claimant:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Name of Claimant" name="claimant_name" value="{{ $form4->claimant_name }}"  autofocus>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Name of Customer:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Name of Customer" name="customer_name" value="{{ $form4->customer_name }}" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Job Location:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Job Location" name="job_location" value="{{ $form4->job_location }}" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner" name="owner" value="{{ $form4->owner }}" >
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
                            <input type="text" class="form-control" placeholder="Maker of Check" name="check_owner" value="{{ $form4->check_owner }}" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Amount of Check: $</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Amount of Check $" name="check_amount" value="{{ $form4->check_amount }}" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Check Payable to: $</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Check Payable to" name="check_payable_to" value="{{ $form4->check_payable_to }}" >
                        </div>
                    </div>

                    <div>
                        <h3 class="text-center">Exceptions</h3>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-4 col-form-label">This document does not affect any of the following:</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="$10,975.00 Total Paid" name="document_effect" value="{{ $form4->document_effect }}" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-4 col-form-label">Disputed claims for extras in the amount of: $</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="0.00" name="extra_amount" value="{{ $form4->extra_amount }}" >
                        </div>
                    </div>

                    <div>
                        <h3 class="text-center">Signature</h3>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Claimant's Signature:</label>
                        <div id="signature-pad" class="m-signature-pad w-50">
                            <img src="{{ asset($form4->signature) }}" width="250" height="150"/>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Claimant's Title:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Claimant's Title" name="claimant_title" value="{{ $form4->claimant_title }}" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Date of Signature:</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" placeholder="Date of Signature" name="signature_date" value="{{ $form4->signature_date }}" disabled required>
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
