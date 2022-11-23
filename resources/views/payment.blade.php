<!DOCTYPE html>
<html lang="en">

<head>
    <title>Pyament</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/select2.min.css') }}" rel="stylesheet">

    <style>
        @import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #eee;

            padding: 30px 10px;
        }

        .card {
            max-width: 500px;
            margin: auto;
            color: black;
            border-radius: 20 px;
        }

        p {
            margin: 0px;
        }

        .container .h8 {
            font-size: 30px;
            font-weight: 800;
            text-align: center;
        }

        .btn.btn-primary {
            width: 100%;
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0 15px;
            background-image: linear-gradient(to right, #fc3538, #fd6d00, #ef9c00, #d3c500, #a8eb12);
            border: none;
            transition: 0.5s;
            background-size: 200% auto;

        }


        .btn.btn.btn-primary:hover {
            background-position: right center;
            color: #fff;
            text-decoration: none;
        }



        .btn.btn-primary:hover .fas.fa-arrow-right {
            transform: translate(15px);
            transition: transform 0.2s ease-in;
        }

        /* .form-control {
            color: white;
            background-color: #223C60;
            border: 2px solid transparent;
            height: 60px;
            padding-left: 20px;
            vertical-align: middle;
        }

        .form-control:focus {
            color: white;
            background-color: #0C4160;
            border: 2px solid #2d4dda;
            box-shadow: none;
        } */

        .text {
            font-size: 14px;
            font-weight: 600;
        }

        /* ::placeholder {
            font-size: 14px;
            font-weight: 600;
        } */
    </style>
</head>

<body>
    <div class="container p-0">
        <div class="card px-4">
            <p class="h8 py-3">Payment Details</p>
            @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif
            @if (session('error'))
            <div class="col-sm-12">
                <div class="alert  alert-danger" role="alert">
                    {{ session('error') }}
                </div>
            </div>
            @endif
            @if (session('success'))
            <div class="col-sm-12">
                <div class="alert  alert-success" role="alert">
                    {{ session('success') }}
                </div>
            </div>
            @endif
            <form action="{{ route('payment-send') }}" method="POST">
                @csrf
                <input type="hidden" name="uuid" value="{{ Crypt::decryptString(request()->route('id')) }}">
                <input type="hidden" name="total" value="{{ request()->route('total') }}">
                <div class="row gx-3">
                    <div class="col-6">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">First Name</p>
                            <input class="form-control mb-3" type="text" placeholder="First Name" name="first_name"
                                required>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">Last Name</p>
                            <input class="form-control mb-3" type="text" placeholder="Last Name" name="last_name"
                                required>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">Address</p>
                            <input class="form-control mb-3" type="text" placeholder="Address" name="address" required>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">Card Number</p>
                            <input class="form-control mb-3" type="number" placeholder="1234 5678 435678" name="card_no"
                                required maxlength="16">
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">Expiry Month</p>
                            <input class="form-control mb-3" type="text" placeholder="MM" name="month" required
                                maxlength="2">
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">Expiry Year</p>
                            <input class="form-control mb-3" type="text" placeholder="YYYY" name="year" required
                                maxlength="4">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">CVV/CVC</p>
                            <input class="form-control mb-3 pt-2 " type="password" placeholder="***" name="cvc" required
                                maxlength="3">
                        </div>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary mb-3 text-center"><b>Pay Now</b></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>

<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/js/jquery-3.6.0.min.js') }}"></script>
<script src="{{ asset('assets/js/jquery.validate.min.js') }}"></script>
<script src="{{ asset('assets/js/select2.min.js') }}"></script>

<script>
    $('form').validate();
        $(document).ready(function() {
            $('.select2').select2();
        });
</script>

</html>
