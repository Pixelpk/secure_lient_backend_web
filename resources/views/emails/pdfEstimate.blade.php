
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Estimate</title>
    <link rel="stylesheet" href="{{ asset('assets/css/pdfstyle.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/toastr.min.css') }}">
  </head>
  <body>
    <header class="clearfix">
    @if(isset($company))
      <div>
        {{-- <img src="{{ asset('/uploads/'.$company->file_url) }}" height="100" width="100"> --}}
        <span style="font-size: 40px;">{{ $company->name }}</span>
      </div>
    @endif

      <div class="text-end print">
          <input type="hidden" id="estimate_id" value="{{ $estimate->id }}"/>
            @if ($estimate->status === 0)
                <button class="btn btn-danger status" onClick="status('Decline')" id="decline">Decline</button>
                <button class="btn btn-success status" onClick="status('Accept')" id="accept">Accept</button>
            @endif
            <button class="btn btn-success" id="printPageButton" onclick="window.print();">Print Document</button>
      </div>

      <h3>ESTIMATE NO # {{ $estimate->id }}</h3>
      <div id="company" class="clearfix">
        @if(isset($company))
            <div>{{ $company->name }}</div>
            <div>{{ $company->address }}</div>
            <div>{{ $company->phone }}</div>
        @endif
      </div>
      <div id="project">
        <div><span>NAME</span> {{ $estimate['client']->name }}</div>
        <div><span>ADDRESS</span> {{ $estimate['client']->address }}</div>
        <div><span>EMAIL</span> <a href="mailto:{{ $estimate['client']->email }}">{{ $estimate['client']->email }}</a></div>
        <div><span>DATE</span> {{ date("F d, Y", strtotime($estimate->date)) }}</div>
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
            @foreach ($estimate->items as $key => $item)
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
            <td class="grandwb total">${{ $estimate->subtotal }}</td>
          </tr>
          <tr>
            <td colspan="5" class="grandwb total">TOTAL TAX</td>
            <td class="grandwb total">${{ $estimate->tax }}</td>
          </tr>
          <tr>
            <td colspan="5" class="grandwb total">TOTAL DISCOUNT</td>
            <td class="grandwb total">${{ $estimate->discount }}</td>
          </tr>
          <tr>
            <td colspan="5" class="grand total"><b>GRAND TOTAL</b></td>
            <td class="grandtotal total"><b>${{ $estimate->total }}</b></td>
          </tr>
        </tbody>
      </table>

      <br/>
      @if(count($estimate->documents) > 0)
        <div>
            <h1>Attach Pictures</h1>
            @foreach ($estimate->documents as $photo)
                @if ($photo->document_type == "photos")
                    <img src="{{ asset('/uploads/'.$photo->getRawOriginal('file_url')) }}" height="150" width="150">
                @endif
            @endforeach
        </div>
      @endif
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

  <script src="{{ asset('assets/js/jquery-3.6.0.min.js') }}"></script>
  <script src="{{ asset('assets/js/toastr.min.js') }}"></script>
  <script>
        toastr.options = {
            "closeButton": true,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }
        function status(status) {
            var estimate_id = $('#estimate_id').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                url: "{{ route('estimate-status') }}",
                method: 'POST',
                data: {
                    estimate_id: estimate_id,
                    status: status
                },
                success: function(result){
                    $('.status').hide();
                    if(result.status == "Accept"){
                        toastr.success("Estimate is accepted!");
                    }
                    if(result.status == "Decline"){
                        toastr.error("Estimate is rejected!");
                    }
                },
                error: function (result) {
                    console.log(result);
                }
            });
        }
  </script>
</html>
