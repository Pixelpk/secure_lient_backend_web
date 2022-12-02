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
      <section id="form-section" class="form-section" style="height: 100%">
          <div class="container">
                <!-- FIELDS -->

                <div class="text-end">
                    <button class="btn btn-success text-end" id="printPageButton" onclick="window.print();">Print Document</button>
                </div>
                <form action="" method="POST" onSubmit="submitForm();" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="row">
                        <div>
                            <h3 class="text-center">Additional Work Authorization</h3>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Name of Owner:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Name of Owner" name="owner_name" value="{{ $form6->owner_name }}" required autofocus disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner Phone:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner Phone" name="owner_phone" value="{{ $form6->owner_phone }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Date:</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" placeholder="Date" name="owner_date" value="{{ $form6->owner_date }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner Address:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner Address" name="owner_address" value="{{ $form6->owner_address }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Job Name:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Job Name" name="job_name" value="{{ $form6->job_name }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Job No:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Job No" name="job_no" value="{{ $form6->job_no }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner City:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner City" name="owner_city" value="{{ $form6->owner_city }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Owner State:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Owner State" name="owner_state" value="{{ $form6->owner_state }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Other Address:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Other Address" name="other_address" value="{{ $form6->other_address }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Existing Contract No:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Existing Contract No" name="existing_contract_no" value="{{ $form6->existing_contract_no }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Existing Contract Date:</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" placeholder="Existing Contract Date" name="date_of_existing_contract" value="{{ $form6->date_of_existing_contract }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">City:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="City" name="other_city" value="{{ $form6->other_city }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">State:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="State" name="other_state" value="{{ $form6->other_state }}" required disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Description:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="We hereby agree to the specified changes and charges listed below" name="note" value="{{ $form6->note }}" required disabled>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-4 col-form-label">Additional charge for abouve work is: $</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="Additional Charge for abouve work is $" name="payment" value="{{ $form6->payment }}" required disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-4 col-form-label">Payment to be made ad follows:</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="Payment to be made ad follows" name="payment_note" value="{{ $form6->payment_note }}" required disabled>
                        </div>
                    </div>

                    <div>
                        <h3 class="text-center">Signature</h3>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Claimant's Signature:</label>
                        <div id="signature-pad" class="m-signature-pad w-50">
                            <img src="{{ asset($form6->contractor_signature) }}" width="250" height="150"/>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Date of Signature:</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" placeholder="Date of Signature" name="contractor_signed_date" value="{{ $form6->contractor_signed_date }}" required disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Change Order No:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Change Order No" name="change_order_no" value="{{ $form6->change_order_no }}" required disabled>
                        </div>
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

</html>
