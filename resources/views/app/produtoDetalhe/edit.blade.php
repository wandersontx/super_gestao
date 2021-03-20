@extends('app.layouts.basico')

@section('titulo', 'Detalhes do produto')
@section('contentApp')


    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>Produto - Editar detalhes do produto</p>
        </div>

        <div class="menu">
            <ul>
                <li><a href="#">Voltar</a></li>
            </ul>
        </div>

        
        <h4>Produto</h4>
        <div>Nome: {{ $produtoDetalhe->produto->nome }} </div>
        <br>
        <div>Descrição: {{ $produtoDetalhe->produto->descricao }}</div>   
        
        <div class="informacao-pagina">


            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                <form action="{{ route('produtoDetalhe.update', $produtoDetalhe) }}" method="post">
                    @csrf
                    @method('put')
                   @component('app.produtoDetalhe._components.fieldsForm', ['produtoDetalhe' => $produtoDetalhe ,'unidades' => $unidades])                       
                   @endcomponent
                </form>
            </div>
        </div>  
    </div>  
@endsection