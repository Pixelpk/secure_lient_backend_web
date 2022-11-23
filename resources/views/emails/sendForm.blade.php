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

@if(!empty($details['forms']))
<div>
    <b>Please fill out all the details carefully and sign the document properly.</b><br/><br/>
    @foreach ($details['forms'] as $key => $form)
        <a href={{ $form."/".$details['email'] }} class="button">Form {{ $key+1 }} fillup</a><br/>
    @endforeach
</div>
@endif

<br/>
Thanks,<br>
{{ config('app.name') }}
@endcomponent
