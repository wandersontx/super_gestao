@extends('site.layouts.basico')
@section('titulo','Contato')
@section('content')
<div class="conteudo-pagina">
    <div class="titulo-pagina">
        <h1>Entre em contato conosco</h1>
    </div>

    <div class="informacao-pagina">
        <div class="contato-principal">
           @component('site.layouts._components.form_contato')
           @endcomponent           
        </div>
    </div>  
</div>
@endsection