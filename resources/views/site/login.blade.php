@extends('site.layouts.basico')
@section('titulo','Contato')
@section('content')
<div class="conteudo-pagina">
    <div class="titulo-pagina">
        <h1>Login</h1>
    </div>

    <div class="informacao-pagina">
        @if (isset($erro) && !empty($erro))
            <h3>Usuário ou senha inválidos</h3>
        @endif
        <div style="width:30%; margin-left: auto; margin-right: auto;">
            <form action="{{ route('site.login') }}" method="post">
                @csrf
                <input type="text" name="usuario" placeholder="Usuário" class="borda-preta" value="{{ old('usuario') }}">
                    @if ($errors->has('usuario'))
                        {{ $errors->first('usuario') }}
                    @endif
                <input type="password" name="senha" placeholder="Senha" class="borda-preta">
                    @if ($errors->has('senha'))
                        {{ $errors->first('senha') }}
                    @endif
                <button type="submit" class="borda-preta">Acessar</button>
            </form>
        </div>
    </div>  
</div>
@endsection