@extends('site.layouts.basico')
@section('titulo','Contato')
@section('content')
<div class="conteudo-pagina">
    <div class="titulo-pagina">
        <h1>Entre em contato conosco</h1>
    </div>

    <div class="informacao-pagina">
        <div class="contato-principal">

           @component('site.layouts._components.form_contato', ['classe' => 'borda-preta', 'motivos_contato' => $listaMotivos])
           <p>A nossa equipe retornará o mais breve possivel</p>
           <p>Tempo médio de resposta é de 15min</p>
           @endcomponent   

        </div>
    </div>  
</div>
@endsection