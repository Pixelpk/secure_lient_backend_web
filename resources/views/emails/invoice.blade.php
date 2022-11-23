@component('mail::message')
<style>
    .button {
        background-color: #3869D4;
        border-top: 10px solid #3869D4;
        border-right: 18px solid #3869D4;
        border-bottom: 10px solid #3869D4;
        border-left: 18px solid #3869D4;
        display: inline-block;
        color: #FFF;
        text-decoration: none;
        border-radius: 3px;
        box-shadow: 0 2px 3px rgba(0, 0, 0, 0.16);
        -webkit-text-size-adjust: none;
        box-sizing: border-box;
    }
</style>
<div>
    <h1 style="text-align: center;">Secure Lien Release Forms</h1>
</div>

@component('mail::button', ['url' => url('download-invoice/'.$details['invoice_id'].'/'.$details['user_id']), 'color' => 'green'])
View Invoice
@endcomponent

<br/>
Thanks,<br>
{{ config('app.name') }}
@endcomponent
