@extends('site.layouts.basico')
@section('titulo','Contato')
@section('content')
<div class="conteudo-pagina">
    <div class="titulo-pagina">
        <h1>Login</h1>
    </div>

    <div class="informacao-pagina">
        <div style="width:30%; margin-left: auto; margin-right: auto;">
            <form action="{{ route('site.login') }}" method="post">
                @csrf
                <input type="text" name="usuarios" placeholder="Usuário" class="borda-preta">
                <input type="passworld" name="senha" placeholder="Senha" class="borda-preta">
                <button type="submit" class="borda-preta">Acessar</button>
            </form>
        </div>
    </div>  
</div>
@endsection