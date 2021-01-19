@extends('site.layouts.basico')
@section('titulo', 'Home')
@section('content')
<div class="conteudo-destaque">

    <div class="esquerda">
        <div class="informacoes">
            <h1>Sistema Super Gestão</h1>
            <p>Software para gestão empresarial ideal para sua empresa.<p>
            <div class="chamada">
                <img src="{{ asset('img/check.png') }}">
                <span class="texto-branco">Gestão completa e descomplicada</span>
            </div>
            <div class="chamada">
                <img src="{{ asset('img/check.png') }}">
                <span class="texto-branco">Sua empresa na nuvem</span>
            </div>
        </div>

        <div class="video">
            <img src="{{ asset('img/player_video.jpg') }}">
        </div>
    </div>

    <div class="direita">
        <div class="contato">
          
                @component('site.layouts._components.form_contato',['classe' => 'borda-branca', 'motivos_contato' => $listaMotivos])
                   <p>Esta é uma mensagem de teste</p>
                @endcomponent     
        </div>
    </div>
</div>
@endsection