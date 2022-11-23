<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Invoice</title>
<link rel="stylesheet" href="{{ asset('assets/css/pdfstyle.css') }}">
</head>

<body>
    <header class="clearfix">
        @if(isset($company))
        <div>
            {{-- <img src="{{ asset('/uploads/'.$company->file_url) }}" height="100" width="100"> --}}
            <span style="font-size: 40px;">{{ $company->name }}</span>
        </div>
        @endif

        <div class="text-end">
            <button class="btn btn-success" id="printPageButton" onclick="window.print();">Print Document</button>
        </div>

        <h1>INVOICE NO # {{ $invoice->id }}</h1>
        <div id="company" class="clearfix">
            @if(isset($company))
            <div>{{ $company->name }}</div>
            <div>{{ $company->address }}</div>
            <div>{{ $company->phone }}</div>
            @endif
        </div>
        <div id="project">
            <div><span>NAME</span> {{ $invoice['client']->name }}</div>
            <div><span>ADDRESS</span> {{ $invoice['client']->address }}</div>
            <div><span>EMAIL</span> <a href="mailto:{{ $invoice['client']->email }}">{{ $invoice['client']->email }}</a>
            </div>
            <div><span>DATE</span> {{ date("F d, Y", strtotime($invoice->date)) }}</div>
        </div>
    </header>
    <main>
        <table>
            <thead>
                <tr>
                    <th class="service">ID</th>
                    <th class="service">NAME</th>
                    <th>PRICE</th>
                    <th>QTY</th>
                    <th>TAX</th>
                    <th>TOTAL</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($invoice->items as $key => $item)
                <tr class="bg">
                    <td class="service">{{ $key+1 }}</td>
                    <td class="desc">{{ $item->name }}</td>
                    <td class="unit">${{ $item->rate }}</td>
                    <td class="unit">{{ $item->qty }}</td>
                    <td class="qty">${{ $item->tax }}</td>
                    <td class="total">${{ $item->total }}</td>
                </tr>
                @endforeach

                <tr>
                    <td colspan="5" class="grandwb total">SUB TOTAL</td>
                    <td class="grandwb total">${{ $invoice->subtotal }}</td>
                </tr>
                <tr></tr>
                <td colspan="5" class="grandwb total">TOTAL TAX</td>
                <td class="grandwb total">${{ $invoice->tax }}</td>
                </tr>
                <tr>
                    <td colspan="5" class="grandwb total">TOTAL DISCOUNT</td>
                    <td class="grandwb total">${{ $invoice->discount }}</td>
                </tr>
                <tr>
                    <td colspan="5" class="grand total"><b>GRAND TOTAL</b></td>
                    <td class="grandtotal total"><b>${{ $invoice->total }}</b></td>
                </tr>

                <tr>
                @if ($invoice->status == 0)
                    <tr>
                        <td colspan="6" style="text-align: right !important">
                            <a href="{{ route('payment',  ['total' => $invoice->total,'id'=>Crypt::encryptString($invoice->id)]) }}"
                                target="blank" class="btn btn-success" id="printPageButton">Continue and pay</a>
                        </td>
                    </tr>
                @endif
            </tbody>
        </table>

        <br />
        @if(count($invoice->documents) > 0)
        <div>
            <h1>Attach Pictures</h1>
            @foreach ($invoice->documents as $photo)
            @if ($photo->document_type == "photos")
            <img src="{{ asset('/uploads/'.$photo->getRawOriginal('file_url')) }}" height="150" width="150">
            @endif
            @endforeach
        </div>
        @endif
        <br />
    </main>

    <footer>
        <p>Invoice was created on a computer and is valid without the signature and seal.</p>
        @if(isset($license))
        <section class="footer-social-links">
            <a href="{{ '//'.$license->facebook_url }}" class="fa fa-facebook" target="_blank"></a>
            <a href="{{ '//'.$license->twitter_url }}" class="fa fa-twitter" target="_blank"></a>
            <a href="{{ '//'.$license->instagram_url }}" class="fa fa-instagram" target="_blank"></a>
            <a href="{{ '//'.$license->web_url }}" class="fa fa-link" target="_blank"></a>
            <a href="{{ asset('/uploads/'.$license->file_url) }}" class="fa fa-certificate" target="_blank"></a>
        </section>
        @endif
    </footer>
</body>

</html>
