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
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Email:</label>
                        <input type="email" class="form-control" placeholder="Email" name="email" required autofocus>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Mobile:</label>
                        <input type="tel" class="form-control" placeholder="+97000000000" name="mobile" required>
                    </div>
                    <h3>To</h3>
                    <div class="row mt-3">
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">OWNER (or Reputed Owner)</b>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Name:</label>
                                <input type="text" class="form-control" placeholder="Name" name="owner_name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="owner_address" required>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="owner_city" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3 mt-4">
                                        <select class="form-select select2" name="owner_state" required>
                                            <option value="" selected>Select State</option>
                                            <option value="Alabama">Alabama</option>
                                            <option value="Alaska">Alaska</option>
                                            <option value="Arizona">Arizona</option>
                                            <option value="Arkansas">Arkansas</option>
                                            <option value="California">California</option>
                                            <option value="Colorado">Colorado</option>
                                            <option value="Connecticut">Connecticut</option>
                                            <option value="Delaware">Delaware</option>
                                            <option value="District of Columbia">District of Columbia</option>
                                            <option value="Florida">Florida</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Hawaii">Hawaii</option>
                                            <option value="Idaho">Idaho</option>
                                            <option value="Illinois">Illinois</option>
                                            <option value="Indiana">Indiana</option>
                                            <option value="Iowa">Iowa</option>
                                            <option value="Kansas">Kansas</option>
                                            <option value="Kentucky">Kentucky</option>
                                            <option value="Louisiana">Louisiana</option>
                                            <option value="Maine">Maine</option>
                                            <option value="Maryland">Maryland</option>
                                            <option value="Massachusetts">Massachusetts</option>
                                            <option value="Michigan">Michigan</option>
                                            <option value="Minnesota">Minnesota</option>
                                            <option value="Mississippi">Mississippi</option>
                                            <option value="Missouri">Missouri</option>
                                            <option value="Montana">Montana</option>
                                            <option value="Nebraska">Nebraska</option>
                                            <option value="Nevada">Nevada</option>
                                            <option value="New Hampshire">New Hampshire</option>
                                            <option value="New Jersey">New Jersey</option>
                                            <option value="New Mexico">New Mexico</option>
                                            <option value="New York">New York</option>
                                            <option value="North Carolina">North Carolina</option>
                                            <option value="North Dakota">North Dakota</option>
                                            <option value="Ohio">Ohio</option>
                                            <option value="Oklahoma">Oklahoma</option>
                                            <option value="Oregon">Oregon</option>
                                            <option value="Pennsylvania">Pennsylvania</option>
                                            <option value="Rhode Island">Rhode Island</option>
                                            <option value="South Corolina">South Corolina</option>
                                            <option value="South Dakota">South Dakota</option>
                                            <option value="Tennessee">Tennessee</option>
                                            <option value="Texas">Texas</option>
                                            <option value="Utah">Utah</option>
                                            <option value="Vermont">Vermont</option>
                                            <option value="Virginia">Virginia</option>
                                            <option value="Washington">Washington</option>
                                            <option value="West Virginia">West Virginia</option>
                                            <option value="Wisconsia">Wisconsia</option>
                                            <option value="Wyoming">Wyoming</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="owner_zip" required>
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
                                <input type="text" class="form-control" placeholder="Name" name="direct_contractor_name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="direct_contractor_address" required>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="direct_contractor_city" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3 mt-4">
                                        <select class="form-select select2" name="direct_contractor_state" required>
                                            <option value="" selected>Select State</option>
                                            <option value="Alabama">Alabama</option>
                                            <option value="Alaska">Alaska</option>
                                            <option value="Arizona">Arizona</option>
                                            <option value="Arkansas">Arkansas</option>
                                            <option value="California">California</option>
                                            <option value="Colorado">Colorado</option>
                                            <option value="Connecticut">Connecticut</option>
                                            <option value="Delaware">Delaware</option>
                                            <option value="District of Columbia">District of Columbia</option>
                                            <option value="Florida">Florida</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Hawaii">Hawaii</option>
                                            <option value="Idaho">Idaho</option>
                                            <option value="Illinois">Illinois</option>
                                            <option value="Indiana">Indiana</option>
                                            <option value="Iowa">Iowa</option>
                                            <option value="Kansas">Kansas</option>
                                            <option value="Kentucky">Kentucky</option>
                                            <option value="Louisiana">Louisiana</option>
                                            <option value="Maine">Maine</option>
                                            <option value="Maryland">Maryland</option>
                                            <option value="Massachusetts">Massachusetts</option>
                                            <option value="Michigan">Michigan</option>
                                            <option value="Minnesota">Minnesota</option>
                                            <option value="Mississippi">Mississippi</option>
                                            <option value="Missouri">Missouri</option>
                                            <option value="Montana">Montana</option>
                                            <option value="Nebraska">Nebraska</option>
                                            <option value="Nevada">Nevada</option>
                                            <option value="New Hampshire">New Hampshire</option>
                                            <option value="New Jersey">New Jersey</option>
                                            <option value="New Mexico">New Mexico</option>
                                            <option value="New York">New York</option>
                                            <option value="North Carolina">North Carolina</option>
                                            <option value="North Dakota">North Dakota</option>
                                            <option value="Ohio">Ohio</option>
                                            <option value="Oklahoma">Oklahoma</option>
                                            <option value="Oregon">Oregon</option>
                                            <option value="Pennsylvania">Pennsylvania</option>
                                            <option value="Rhode Island">Rhode Island</option>
                                            <option value="South Corolina">South Corolina</option>
                                            <option value="South Dakota">South Dakota</option>
                                            <option value="Tennessee">Tennessee</option>
                                            <option value="Texas">Texas</option>
                                            <option value="Utah">Utah</option>
                                            <option value="Vermont">Vermont</option>
                                            <option value="Virginia">Virginia</option>
                                            <option value="Washington">Washington</option>
                                            <option value="West Virginia">West Virginia</option>
                                            <option value="Wisconsia">Wisconsia</option>
                                            <option value="Wyoming">Wyoming</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="direct_contractor_zip" required>
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
                                <input type="text" class="form-control" placeholder="Name" name="contractor_leader_name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="contractor_leader_address" required>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="contractor_leader_city" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3 mt-4">
                                        <select class="form-select select2" name="contractor_leader_state" required>
                                            <option value="" selected>Select State</option>
                                            <option value="Alabama">Alabama</option>
                                            <option value="Alaska">Alaska</option>
                                            <option value="Arizona">Arizona</option>
                                            <option value="Arkansas">Arkansas</option>
                                            <option value="California">California</option>
                                            <option value="Colorado">Colorado</option>
                                            <option value="Connecticut">Connecticut</option>
                                            <option value="Delaware">Delaware</option>
                                            <option value="District of Columbia">District of Columbia</option>
                                            <option value="Florida">Florida</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Hawaii">Hawaii</option>
                                            <option value="Idaho">Idaho</option>
                                            <option value="Illinois">Illinois</option>
                                            <option value="Indiana">Indiana</option>
                                            <option value="Iowa">Iowa</option>
                                            <option value="Kansas">Kansas</option>
                                            <option value="Kentucky">Kentucky</option>
                                            <option value="Louisiana">Louisiana</option>
                                            <option value="Maine">Maine</option>
                                            <option value="Maryland">Maryland</option>
                                            <option value="Massachusetts">Massachusetts</option>
                                            <option value="Michigan">Michigan</option>
                                            <option value="Minnesota">Minnesota</option>
                                            <option value="Mississippi">Mississippi</option>
                                            <option value="Missouri">Missouri</option>
                                            <option value="Montana">Montana</option>
                                            <option value="Nebraska">Nebraska</option>
                                            <option value="Nevada">Nevada</option>
                                            <option value="New Hampshire">New Hampshire</option>
                                            <option value="New Jersey">New Jersey</option>
                                            <option value="New Mexico">New Mexico</option>
                                            <option value="New York">New York</option>
                                            <option value="North Carolina">North Carolina</option>
                                            <option value="North Dakota">North Dakota</option>
                                            <option value="Ohio">Ohio</option>
                                            <option value="Oklahoma">Oklahoma</option>
                                            <option value="Oregon">Oregon</option>
                                            <option value="Pennsylvania">Pennsylvania</option>
                                            <option value="Rhode Island">Rhode Island</option>
                                            <option value="South Corolina">South Corolina</option>
                                            <option value="South Dakota">South Dakota</option>
                                            <option value="Tennessee">Tennessee</option>
                                            <option value="Texas">Texas</option>
                                            <option value="Utah">Utah</option>
                                            <option value="Vermont">Vermont</option>
                                            <option value="Virginia">Virginia</option>
                                            <option value="Washington">Washington</option>
                                            <option value="West Virginia">West Virginia</option>
                                            <option value="Wisconsia">Wisconsia</option>
                                            <option value="Wyoming">Wyoming</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="contractor_leader_zip" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">OTHERS (Surety, Subcontractor)</b>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Name:</label>
                                <input type="text" class="form-control" placeholder="Name" name="other_name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="other_address" required>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="other_city" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3 mt-4">
                                        <select class="form-select select2" name="other_state" required>
                                            <option value="" selected>Select State</option>
                                            <option value="Alabama">Alabama</option>
                                            <option value="Alaska">Alaska</option>
                                            <option value="Arizona">Arizona</option>
                                            <option value="Arkansas">Arkansas</option>
                                            <option value="California">California</option>
                                            <option value="Colorado">Colorado</option>
                                            <option value="Connecticut">Connecticut</option>
                                            <option value="Delaware">Delaware</option>
                                            <option value="District of Columbia">District of Columbia</option>
                                            <option value="Florida">Florida</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Hawaii">Hawaii</option>
                                            <option value="Idaho">Idaho</option>
                                            <option value="Illinois">Illinois</option>
                                            <option value="Indiana">Indiana</option>
                                            <option value="Iowa">Iowa</option>
                                            <option value="Kansas">Kansas</option>
                                            <option value="Kentucky">Kentucky</option>
                                            <option value="Louisiana">Louisiana</option>
                                            <option value="Maine">Maine</option>
                                            <option value="Maryland">Maryland</option>
                                            <option value="Massachusetts">Massachusetts</option>
                                            <option value="Michigan">Michigan</option>
                                            <option value="Minnesota">Minnesota</option>
                                            <option value="Mississippi">Mississippi</option>
                                            <option value="Missouri">Missouri</option>
                                            <option value="Montana">Montana</option>
                                            <option value="Nebraska">Nebraska</option>
                                            <option value="Nevada">Nevada</option>
                                            <option value="New Hampshire">New Hampshire</option>
                                            <option value="New Jersey">New Jersey</option>
                                            <option value="New Mexico">New Mexico</option>
                                            <option value="New York">New York</option>
                                            <option value="North Carolina">North Carolina</option>
                                            <option value="North Dakota">North Dakota</option>
                                            <option value="Ohio">Ohio</option>
                                            <option value="Oklahoma">Oklahoma</option>
                                            <option value="Oregon">Oregon</option>
                                            <option value="Pennsylvania">Pennsylvania</option>
                                            <option value="Rhode Island">Rhode Island</option>
                                            <option value="South Corolina">South Corolina</option>
                                            <option value="South Dakota">South Dakota</option>
                                            <option value="Tennessee">Tennessee</option>
                                            <option value="Texas">Texas</option>
                                            <option value="Utah">Utah</option>
                                            <option value="Vermont">Vermont</option>
                                            <option value="Virginia">Virginia</option>
                                            <option value="Washington">Washington</option>
                                            <option value="West Virginia">West Virginia</option>
                                            <option value="Wisconsia">Wisconsia</option>
                                            <option value="Wyoming">Wyoming</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="other_zip" required>
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
                                <input type="text" class="form-control" placeholder="Name" name="company_name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="company_address" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">License #:</label>
                                <input type="text" class="form-control" placeholder="License #" name="company_license" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Phone #:</label>
                                <input type="text" class="form-control" placeholder="Phone #" name="company_phone" required>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="company_city" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3 mt-4">
                                        <select class="form-select select2" name="company_state" required>
                                            <option value="" selected>Select State</option>
                                            <option value="Alabama">Alabama</option>
                                            <option value="Alaska">Alaska</option>
                                            <option value="Arizona">Arizona</option>
                                            <option value="Arkansas">Arkansas</option>
                                            <option value="California">California</option>
                                            <option value="Colorado">Colorado</option>
                                            <option value="Connecticut">Connecticut</option>
                                            <option value="Delaware">Delaware</option>
                                            <option value="District of Columbia">District of Columbia</option>
                                            <option value="Florida">Florida</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Hawaii">Hawaii</option>
                                            <option value="Idaho">Idaho</option>
                                            <option value="Illinois">Illinois</option>
                                            <option value="Indiana">Indiana</option>
                                            <option value="Iowa">Iowa</option>
                                            <option value="Kansas">Kansas</option>
                                            <option value="Kentucky">Kentucky</option>
                                            <option value="Louisiana">Louisiana</option>
                                            <option value="Maine">Maine</option>
                                            <option value="Maryland">Maryland</option>
                                            <option value="Massachusetts">Massachusetts</option>
                                            <option value="Michigan">Michigan</option>
                                            <option value="Minnesota">Minnesota</option>
                                            <option value="Mississippi">Mississippi</option>
                                            <option value="Missouri">Missouri</option>
                                            <option value="Montana">Montana</option>
                                            <option value="Nebraska">Nebraska</option>
                                            <option value="Nevada">Nevada</option>
                                            <option value="New Hampshire">New Hampshire</option>
                                            <option value="New Jersey">New Jersey</option>
                                            <option value="New Mexico">New Mexico</option>
                                            <option value="New York">New York</option>
                                            <option value="North Carolina">North Carolina</option>
                                            <option value="North Dakota">North Dakota</option>
                                            <option value="Ohio">Ohio</option>
                                            <option value="Oklahoma">Oklahoma</option>
                                            <option value="Oregon">Oregon</option>
                                            <option value="Pennsylvania">Pennsylvania</option>
                                            <option value="Rhode Island">Rhode Island</option>
                                            <option value="South Corolina">South Corolina</option>
                                            <option value="South Dakota">South Dakota</option>
                                            <option value="Tennessee">Tennessee</option>
                                            <option value="Texas">Texas</option>
                                            <option value="Utah">Utah</option>
                                            <option value="Vermont">Vermont</option>
                                            <option value="Virginia">Virginia</option>
                                            <option value="Washington">Washington</option>
                                            <option value="West Virginia">West Virginia</option>
                                            <option value="Wisconsia">Wisconsia</option>
                                            <option value="Wyoming">Wyoming</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="company_zip" required>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Has supplied materials or equipment, or performed work or services as follows:</label>
                                <input type="text" class="form-control" placeholder="Services" name="company_services" required>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">For improvement of the property defined as:</b>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="property_address" required>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="property_city" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3 mt-4">
                                        <select class="form-select select2" name="property_state" required>
                                            <option value="" selected>Select State</option>
                                            <option value="Alabama">Alabama</option>
                                            <option value="Alaska">Alaska</option>
                                            <option value="Arizona">Arizona</option>
                                            <option value="Arkansas">Arkansas</option>
                                            <option value="California">California</option>
                                            <option value="Colorado">Colorado</option>
                                            <option value="Connecticut">Connecticut</option>
                                            <option value="Delaware">Delaware</option>
                                            <option value="District of Columbia">District of Columbia</option>
                                            <option value="Florida">Florida</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Hawaii">Hawaii</option>
                                            <option value="Idaho">Idaho</option>
                                            <option value="Illinois">Illinois</option>
                                            <option value="Indiana">Indiana</option>
                                            <option value="Iowa">Iowa</option>
                                            <option value="Kansas">Kansas</option>
                                            <option value="Kentucky">Kentucky</option>
                                            <option value="Louisiana">Louisiana</option>
                                            <option value="Maine">Maine</option>
                                            <option value="Maryland">Maryland</option>
                                            <option value="Massachusetts">Massachusetts</option>
                                            <option value="Michigan">Michigan</option>
                                            <option value="Minnesota">Minnesota</option>
                                            <option value="Mississippi">Mississippi</option>
                                            <option value="Missouri">Missouri</option>
                                            <option value="Montana">Montana</option>
                                            <option value="Nebraska">Nebraska</option>
                                            <option value="Nevada">Nevada</option>
                                            <option value="New Hampshire">New Hampshire</option>
                                            <option value="New Jersey">New Jersey</option>
                                            <option value="New Mexico">New Mexico</option>
                                            <option value="New York">New York</option>
                                            <option value="North Carolina">North Carolina</option>
                                            <option value="North Dakota">North Dakota</option>
                                            <option value="Ohio">Ohio</option>
                                            <option value="Oklahoma">Oklahoma</option>
                                            <option value="Oregon">Oregon</option>
                                            <option value="Pennsylvania">Pennsylvania</option>
                                            <option value="Rhode Island">Rhode Island</option>
                                            <option value="South Corolina">South Corolina</option>
                                            <option value="South Dakota">South Dakota</option>
                                            <option value="Tennessee">Tennessee</option>
                                            <option value="Texas">Texas</option>
                                            <option value="Utah">Utah</option>
                                            <option value="Vermont">Vermont</option>
                                            <option value="Virginia">Virginia</option>
                                            <option value="Washington">Washington</option>
                                            <option value="West Virginia">West Virginia</option>
                                            <option value="Wisconsia">Wisconsia</option>
                                            <option value="Wyoming">Wyoming</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="property_zip" required>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">APN / Description:</label>
                                <input type="text" class="form-control" placeholder="APN / Description" name="property_apn" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">In the Amount of:</label>
                                <input type="text" class="form-control" placeholder="In the Amount of" name="amount_of" required>
                                <small>This is an estimated amount, and is not alimitation of claimant’s final amount</small>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="d-grid">
                                <b class="text-center">Under contract with:</b>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Company Name:</label>
                                <input type="text" class="form-control" placeholder="Name" name="contract_name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" placeholder="Address" name="contract_address" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">License #:</label>
                                <input type="text" class="form-control" placeholder="License #" name="contract_license" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Phone #:</label>
                                <input type="text" class="form-control" placeholder="Phone #" name="contract_phone" required>
                            </div>
                            <div class="row d-flex align-items-center">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">City:</label>
                                        <input type="text" class="form-control col-md-3" placeholder="City" name="contract_city" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3 mt-4">
                                        <select class="form-select select2" name="contract_state" required>
                                            <option value="" selected>Select State</option>
                                            <option value="Alabama">Alabama</option>
                                            <option value="Alaska">Alaska</option>
                                            <option value="Arizona">Arizona</option>
                                            <option value="Arkansas">Arkansas</option>
                                            <option value="California">California</option>
                                            <option value="Colorado">Colorado</option>
                                            <option value="Connecticut">Connecticut</option>
                                            <option value="Delaware">Delaware</option>
                                            <option value="District of Columbia">District of Columbia</option>
                                            <option value="Florida">Florida</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Hawaii">Hawaii</option>
                                            <option value="Idaho">Idaho</option>
                                            <option value="Illinois">Illinois</option>
                                            <option value="Indiana">Indiana</option>
                                            <option value="Iowa">Iowa</option>
                                            <option value="Kansas">Kansas</option>
                                            <option value="Kentucky">Kentucky</option>
                                            <option value="Louisiana">Louisiana</option>
                                            <option value="Maine">Maine</option>
                                            <option value="Maryland">Maryland</option>
                                            <option value="Massachusetts">Massachusetts</option>
                                            <option value="Michigan">Michigan</option>
                                            <option value="Minnesota">Minnesota</option>
                                            <option value="Mississippi">Mississippi</option>
                                            <option value="Missouri">Missouri</option>
                                            <option value="Montana">Montana</option>
                                            <option value="Nebraska">Nebraska</option>
                                            <option value="Nevada">Nevada</option>
                                            <option value="New Hampshire">New Hampshire</option>
                                            <option value="New Jersey">New Jersey</option>
                                            <option value="New Mexico">New Mexico</option>
                                            <option value="New York">New York</option>
                                            <option value="North Carolina">North Carolina</option>
                                            <option value="North Dakota">North Dakota</option>
                                            <option value="Ohio">Ohio</option>
                                            <option value="Oklahoma">Oklahoma</option>
                                            <option value="Oregon">Oregon</option>
                                            <option value="Pennsylvania">Pennsylvania</option>
                                            <option value="Rhode Island">Rhode Island</option>
                                            <option value="South Corolina">South Corolina</option>
                                            <option value="South Dakota">South Dakota</option>
                                            <option value="Tennessee">Tennessee</option>
                                            <option value="Texas">Texas</option>
                                            <option value="Utah">Utah</option>
                                            <option value="Vermont">Vermont</option>
                                            <option value="Virginia">Virginia</option>
                                            <option value="Washington">Washington</option>
                                            <option value="West Virginia">West Virginia</option>
                                            <option value="Wisconsia">Wisconsia</option>
                                            <option value="Wyoming">Wyoming</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Zip:</label>
                                        <input type="text" class="form-control" placeholder="Zip" name="contract_zip" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <h5>PROOF OF SERVICE AFFIDAVIT (Pursuant to California Civil Code §8106)</h5>
                        <p>I,
                            <input type="text" name="prof_provider_name" required>
                            declare that I served copies of the above Preliminary Notice for Private Works by:
                        </p>

                        <p>
                            <input type="checkbox" name="personal_delivery_status" required>
                            <input type="text" placeholder="Name/Title" name="prof_name" required> at
                            <input type="text" placeholder="Address" name="prof_address" required> on
                            <input type="date" placeholder="Date" name="prof_date" required> on
                            <input type="time" placeholder="Time" name="prof_time" required> on
                        </p>
                        <p>
                            <input type="checkbox" name="personal_delivery_status_2" required>
                            <input type="text" placeholder="Name/Title" name="prof_name_2" required> at
                            <input type="text" placeholder="Address" name="prof_address_2" required> on
                            <input type="date" placeholder="Date" name="prof_date_2" required> on
                            <input type="time" placeholder="Time" name="prof_time_2" required> on
                        </p>
                        <p>
                            <input type="checkbox" name="pursuant_status" required>
                            Pursuant to California Civil Code §8110, via Registered or Certified Mail, Express Mail, or overnight delivery by an express service carrier to each of the parties and
                            respective addresses as listed above on
                            <input type="text" name="pursuant" required>
                        </p>
                    </div>

                    <div class="row">
                        <h4>I declare under penalty of perjury that the foregoing is true and correct.</h4>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Signed Date:</label>
                            <input type="date" class="form-control" placeholder="Signed Date" name="signed_date" required>
                        </div>
                    </div>

                    <div class="row">
                        <div id="signature-pad" class="m-signature-pad w-50">
                            <div class="m-signature-pad--body">
                                <canvas width="500" style="touch-action: none;" height="250"></canvas>
                                <input type="hidden" name="signature" id="signature" value="">
                            </div>
                            <div class="text-end">
                                <button type="button" class="btn btn-primary" onclick="signaturePad.clear();">clear</button>
                            </div>
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
        $( "form" ).validate();

        $(document).ready(function() {
            $('.select2').select2();
        });

        $("form").submit(function (e) {
            if(signaturePad.isEmpty()){
                alert("Please sign the document");
                e.preventDefault();
                return false;
            }
        });
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
