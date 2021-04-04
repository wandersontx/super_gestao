@extends('app.layouts.basico')

@section('titulo', 'Produto')
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>Produto - Adicionar</p>
        </div>
        
        <div class="menu">
            <ul>
                <li><a href="{{ route('produto.index') }}">Voltar</a></li>
                <li><a href="#">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                <form action="{{ route('produto.store') }}" method="post">
                    @csrf
                   @component('app.produto._partials.fieldsForm', ['unidades' => $unidades,'fornecedores' => $fornecedores])                       
                   @endcomponent
                </form>
            </div>
        </div>  
    </div>  
@endsection