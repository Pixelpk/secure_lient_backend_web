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
                    <div class="row">
                        <div>
                            <h3 class="text-center">Additional Work Authorization</h3>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label class="form-label">Email:</label>
                            <input type="email" class="form-control" placeholder="Email" name="email"  autofocus>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Mobile:</label>
                            <input type="tel" class="form-control" placeholder="+97000000000" name="mobile" >
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Name of Owner:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Name of Owner" name="owner_name"  autofocus>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner Phone:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner Phone" name="owner_phone" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Date:</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" placeholder="Date" name="owner_date" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner Address:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner Address" name="owner_address" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Job Name:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Job Name" name="job_name" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Job No:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Job No" name="job_no" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner City:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner City" name="owner_city" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner State:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner State" name="owner_state" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Other Address:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Other Address" name="other_address" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Existing Contract No:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Existing Contract No" name="existing_contract_no" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Existing Contract Date:</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" placeholder="Existing Contract Date" name="date_of_existing_contract" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">City:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="City" name="other_city" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">State:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="State" name="other_state" >
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Description:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="We hereby agree to the specified changes and charges listed below" name="note" >
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-4 col-form-label">Additional charge for abouve work is: $</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="Additional Charge for abouve work is $" name="payment" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-4 col-form-label">Payment to be made ad follows:</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="Payment to be made ad follows" name="payment_note" >
                        </div>
                    </div>

                    <div>
                        <h3 class="text-center">Signature</h3>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Claimant's Signature:</label>
                        <div id="signature-pad" class="m-signature-pad w-50">
                            <div class="m-signature-pad--body">
                                <canvas width="500" style="touch-action: none;" height="250"></canvas>
                                <input type="hidden" name="contractor_signature" id="contractor_signature" value="">
                            </div>
                            <div class="text-end">
                                <button type="button" class="btn btn-primary" onclick="signaturePad.clear();">clear</button>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Date of Signature:</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" placeholder="Date of Signature" name="contractor_signed_date" >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Change Order No:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Change Order No" name="change_order_no" >
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
        //if(signaturePad2.isEmpty()){
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
        var wrapper2 = document.getElementById("signature-pad-2"),
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
            document.getElementById('contractor_signature').value = signaturePad.toDataURL();
        }


        var signaturePad = new SignaturePad(canvas);
        signaturePad.minWidth = 1; //minimale Breite des Stiftes
        signaturePad.maxWidth = 1; //maximale Breite des Stiftes
        signaturePad.penColor = "#000000"; //Stiftfarbe
        signaturePad.backgroundColor = "#FFFFFF"; //Hintergrundfarbe

        window.onresize = resizeCanvas;
        resizeCanvas();

    </script>

    {{-- <script type="text/javascript">
        var wrapper = document.getElementById("signature-pad-2"),
        canvas = wrapper.querySelector("canvas"),
        signaturePad2;

        /**
        *  Behandlung der Größenänderung der Unterschriftenfelds
        */
        function resizeCanvas() {
            var oldContent = signaturePad2.toData();
            var ratio =  Math.max(window.devicePixelRatio || 1, 1);
            canvas.width = canvas.offsetWidth * ratio;
            canvas.height = canvas.offsetHeight * ratio;
            canvas.getContext("2d").scale(ratio, ratio);
            signaturePad2.clear();
            signaturePad2.fromData(oldContent);
        }


        /**
        *  Speichern des Inhaltes als Bild
        */

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
            document.getElementById('owner_signature').value = signaturePad2.toDataURL();
        }


        var signaturePad2 = new SignaturePad(canvas);
        signaturePad2.minWidth = 1; //minimale Breite des Stiftes
        signaturePad2.maxWidth = 1; //maximale Breite des Stiftes
        signaturePad2.penColor = "#000000"; //Stiftfarbe
        signaturePad2.backgroundColor = "#FFFFFF"; //Hintergrundfarbe

        window.onresize = resizeCanvas;
        resizeCanvas();

    </script> --}}
</html>
