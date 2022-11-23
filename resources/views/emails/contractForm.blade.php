<!DOCTYPE html>

<html>

<head>

    <title>Lies Contract Form</title>
    <style>
        .btn {
            display: block;
            padding: .625rem .5rem;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #17a2b8;
            color: #ffffff;
        }
    </style>

</head>

<body>

    <h1>Lies Contract Form</h1>

    <p>Contract against you filled by {{ $data['user']->name }}.</p>

    <p>{{ date("d-M-Y") }}</p>

    <a href="{{ url('get-send'.$data['type'].$data['form_no']) }}" class="btn" target="blank" style="width: auto;
    padding: .625rem 1rem;
    border-radius: 8px;
    justify-content: center;
    align-items: center;
    background-color: #17a2b8;
    color: #ffffff;
    font-weight: 500;
    text-decoration: none">
    View Contract</a><br/>

    <p>Thank you</p>

</body>

</html>
