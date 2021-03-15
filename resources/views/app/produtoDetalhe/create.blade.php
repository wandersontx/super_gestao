@extends('app.layouts.basico')

@section('titulo', 'Detalhes do produto')
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>Produto - Adicionar detalhes do produto</p>
        </div>
        
        <div class="menu">
            <ul>
                <li><a href="#">Voltar</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                <form action="{{ route('produtoDetalhe.store') }}" method="post">
                    @csrf
                   @component('app.produtoDetalhe._components.fieldsForm')                       
                   @endcomponent
                </form>
            </div>
        </div>  
    </div>  
@endsection