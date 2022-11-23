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
                <div class="text-end">
                    <button class="btn btn-success text-end" id="printPageButton" onclick="window.print();">Print Document</button>
                </div>
                <h3 class="text-center">CALIFORNIA PRELIMINARY NOTICE <small> FOR PRIVATE WORKS</small></h3>
                <div>
                  <p>
                    <b>NOTICE TO PROPERTY OWNER,</b> EVEN THOUGH YOU HAVE PAID YOUR CONTRACTOR IN FULL, if the person or firm that has given you this notice is not paid in
                    full for labor, service, equipment, or material provided or to be provided to your construction project, a lien may be placed on your property. Foreclosure of the lien may
                    lead to loss of all or part of your property. You may wish to protect yourself against this by (1) requiring your contractor to provide a signed release by the person or firm
                    that has given you this notice before making payment to your contractor, or (2) any other method that is appropriate under the circumstances.
                    This notice is required by law to be served by the undersigned as a statement of your legal rights. This notice is not intended to reflect upon the financial condition of the
                    contractor or person employed by you on the construction project.
                    If you record a notice of cessation or completion of your construction project, you must within 10 days after recording, send a copy of the notice o completion to your
                    contractor and the person or firm that has given you this notice. The notice must be sent by registered or certified mail. Failure to send the notice will extend the
                    deadline to record a claim of lien. You are not required to send the notice if you are residential homeowner of a dwelling containing four or fewer units.
                  </p>
                </div>

                <!-- FIELDS -->

                <form>
                    <h3>To</h3>
                    <div class="row mt-3">
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">OWNER (or Reputed Owner)</b>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Name:</label>
                                <input type="text" class="form-control" placeholder="Name" name="owner_name" value="{{ $form1->owner_name }}" disabled autofocus>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="owner_address" value="{{ $form1->owner_address }}" disabled>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="owner_city" value="{{ $form1->owner_city }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">State:</label>
                                        <input type="text" class="form-control" placeholder="State" name="owner_state" value="{{ $form1->owner_state }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="owner_zip" value="{{ $form1->owner_zip }}" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">DIRECT CONTRACTOR (or Reputed Direct Contractor)</b>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Name:</label>
                                <input type="text" class="form-control" placeholder="Name" name="direct_contractor_name" value="{{ $form1->direct_contractor_name }}" disabled>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="direct_contractor_address" value="{{ $form1->direct_contractor_address }}" disabled>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="direct_contractor_city" value="{{ $form1->direct_contractor_city }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">State:</label>
                                        <input type="text" class="form-control" placeholder="State" name="direct_contractor_state" value="{{ $form1->direct_contractor_state }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="direct_contractor_zip" value="{{ $form1->direct_contractor_zip }}" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">CONSTRUCTION LENDER (or Reputed Construction Lender)</b>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Name:</label>
                                <input type="text" class="form-control" placeholder="Name" name="contractor_leader_name" value="{{ $form1->contractor_leader_name }}" disabled>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="contractor_leader_address" value="{{ $form1->contractor_leader_address }}" disabled>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="contractor_leader_city" value="{{ $form1->contractor_leader_city }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">State:</label>
                                        <input type="text" class="form-control" placeholder="State" name="contractor_leader_state" value="{{ $form1->contractor_leader_state }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="contractor_leader_zip" value="{{ $form1->contractor_leader_zip }}" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">OTHERS (Surety, Subcontractor)</b>
                            </div>
                            <div class="mb-5">
                                <label class="form-label">Name:</label>
                                <input type="text" class="form-control" placeholder="Name" name="other_name" value="{{ $form1->other_name }}" disabled>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="other_address" value="{{ $form1->other_address }}" disabled>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="other_city" value="{{ $form1->other_city }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">State:</label>
                                        <input type="text" class="form-control" placeholder="State" name="other_state" value="{{ $form1->other_state }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="other_zip" value="{{ $form1->other_zip }}" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <h3>From</h3>
                    <div class="row mt-3">
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">YOUR ARE HEREBY NOTIFIED THAT THE UNDERSIGNED CLAIMANT</b>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Company Name:</label>
                                <input type="text" class="form-control" placeholder="Name" name="company_name" value="{{ $form1->company_name }}" disabled>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="company_address" value="{{ $form1->company_address }}" disabled>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">License #:</label>
                                <input type="text" class="form-control" placeholder="License #" name="company_license" value="{{ $form1->company_license }}" disabled>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Phone #:</label>
                                <input type="text" class="form-control" placeholder="Phone #" name="company_phone" value="{{ $form1->company_phone }}" disabled>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="company_city" value="{{ $form1->company_city }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">State:</label>
                                        <input type="text" class="form-control" placeholder="State" name="company_state" value="{{ $form1->company_state }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="company_zip" value="{{ $form1->company_zip }}" disabled>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Has supplied materials or equipment, or performed work or services as follows:</label>
                                <input type="text" class="form-control" placeholder="Services" name="company_services" value="{{ $form1->company_services }}" disabled>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">For improvement of the property defined as:</b>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="property_address" value="{{ $form1->property_address }}" disabled>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="property_city" value="{{ $form1->property_city }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">State:</label>
                                        <input type="text" class="form-control" placeholder="State" name="property_state" value="{{ $form1->property_state }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="property_zip" value="{{ $form1->property_zip }}" disabled>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">APN / Description:</label>
                                <input type="text" class="form-control" placeholder="APN / Description" name="property_apn" value="{{ $form1->property_apn }}" disabled>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">In the Amount of:</label>
                                <input type="text" class="form-control" placeholder="In the Amount of" name="amount_of" value="{{ $form1->amount_of }}" disabled>
                                <small>This is an estimated amount, and is not alimitation of claimant’s final amount</small>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">Under contract with:</b>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Company Name:</label>
                                <input type="text" class="form-control" placeholder="Name" name="contract_name" value="{{ $form1->contract_name }}" disabled>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="contract_address" value="{{ $form1->contract_address }}" disabled>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">License #:</label>
                                <input type="text" class="form-control" placeholder="License #" name="contract_license" value="{{ $form1->contract_license }}" disabled>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Phone #:</label>
                                <input type="text" class="form-control" placeholder="Phone #" name="contract_phone" value="{{ $form1->contract_phone }}" disabled>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="contract_city" value="{{ $form1->contract_city }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">State:</label>
                                        <input type="text" class="form-control" placeholder="State" name="contract_state" value="{{ $form1->contract_state }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="contract_zip" value="{{ $form1->contract_zip }}" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <h5>PROOF OF SERVICE AFFIDAVIT (Pursuant to California Civil Code §8106)</h5>
                        <p>I,
                            <input type="text" name="prof_provider_name" value="{{ $form1->prof_provider_name }}" disabled>
                            declare that I served copies of the above Preliminary Notice for Private Works by:
                        </p>

                        <p>
                            <input type="checkbox" name="personal_delivery_status" value="{{ $form1->personal_delivery_status }}" disabled checked>
                            <input type="text" placeholder="Name/Title" name="prof_name" value="{{ $form1->prof_name }}" disabled> at
                            <input type="text" placeholder="Address" name="prof_address" value="{{ $form1->prof_address }}" disabled> on
                            <input type="date" placeholder="Date" name="prof_date" value="{{ $form1->prof_date }}" disabled> on
                            <input type="time" placeholder="Time" name="prof_time" value="{{ $form1->prof_time }}" disabled> on
                        </p>
                        <p>
                            <input type="checkbox" name="personal_delivery_status_2" value="{{ $form1->personal_delivery_status_2 }}" disabled checked>
                            <input type="text" placeholder="Name/Title" name="prof_name_2" value="{{ $form1->prof_name_2 }}" disabled> at
                            <input type="text" placeholder="Address" name="prof_address_2" value="{{ $form1->prof_address_2 }}" disabled> on
                            <input type="date" placeholder="Date" name="prof_date_2" value="{{ $form1->prof_date_2 }}" disabled> on
                            <input type="time" placeholder="Time" name="prof_time_2" value="{{ $form1->prof_time_2 }}" disabled> on
                        </p>
                        <p>
                            <input type="checkbox" name="pursuant_status" value="{{ $form1->pursuant_status }}" disabled checked>
                            Pursuant to California Civil Code §8110, via Registered or Certified Mail, Express Mail, or overnight delivery by an express service carrier to each of the parties and
                            respective addresses as listed above on
                            <input type="text" name="pursuant" value="{{ $form1->pursuant }}" disabled>
                        </p>
                    </div>

                    <div class="row">
                        <h4>I declare under penalty of perjury that the foregoing is true and correct.</h4>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Signed Date:</label>
                            <input type="date" class="form-control" placeholder="Signed Date" name="signed_date" value="{{ $form1->signed_date }}" disabled>
                        </div>
                    </div>

                    <div class="row">
                        <div id="signature-pad" class="m-signature-pad w-50">
                            <div class="m-signature-pad--body">
                                <img src="{{ asset($form1->signature) }}" width="250" height="150"/>
                            </div>
                        </div>
                    </div>

                </form>
                <!-- /FIELDS -->
          </div>
      </section>
    </body>
    <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/js/jquery-3.6.0.min.js') }}"></script>

</html>
