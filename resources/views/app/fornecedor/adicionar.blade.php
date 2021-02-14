@extends('app.layouts.basico')

@section('titulo', 'fornecedor')
    
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>fornecedor - Adicionar</p>
        </div>
        
        <div class="menu">
            <ul>
                <li><a href="{{ route('app.fornecedor.adicionar') }}">Novo</a></li>
                <li><a href="{{ route('app.fornecedor') }}">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                <form action="{{ route('app.fornecedor.adicionar') }}" method="post">
                    @csrf
                    <input type="text" name="nome" id="" placeholder="Digite o nome" class="borda-preta">
                        @if ($errors->has('nome'))
                            <div class="invalid-feedback">{{ $errors->first('nome') }}</div>
                        @endif                        
                    <input type="text" name="site" id="" placeholder="Digite o site" class="borda-preta">
                         @if ($errors->has('site'))
                            <div class="invalid-feedback">{{ $errors->first('site') }}</div>
                        @endif   
                    <input type="text" name="uf" id="" placeholder="Digite a unidade federativa" class="borda-preta" max="2">
                         @if ($errors->has('uf'))
                            <div class="invalid-feedback">{{ $errors->first('uf') }}</div>
                        @endif   
                    <input type="text" name="email" id="" placeholder="digite um e-mail valido" class="borda-preta">
                         @if ($errors->has('email'))
                            <div class="invalid-feedback">{{ $errors->first('email') }}</div>
                        @endif   
                    <button type="submit" class="borda-preta">Cadastrar</button>
                </form>
            </div>
        </div>  
    </div>  
@endsection