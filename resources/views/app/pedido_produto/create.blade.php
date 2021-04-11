@extends('app.layouts.basico')

@section('titulo', 'Pedido Produto')
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>Adicionar Produtos ao Pedido</p>
        </div>
        
        <div class="menu">
            <ul>
                <li><a href="{{ route('pedido.index') }}">Voltar</a></li>
                <li><a href="#">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <h4>Detalhes do pedido</h4>
            <p>ID do pedido: {{ $pedido->id }}</p>
            <p>Cliente: {{ $pedido->cliente_id }}</p>
            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                <form action="{{ route('pedido-produto.store', ['pedido' => $pedido ]) }}" method="post">
                    @csrf
                   @component('app.pedido_produto._partials.fieldsForm', ['produtos' => $produtos])                       
                   @endcomponent
                </form>
            </div>
        </div>  
    </div>  
@endsection