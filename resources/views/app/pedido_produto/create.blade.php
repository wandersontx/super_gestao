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
        
        <div class="informacao-pagina" >
            <h4>Detalhes do pedido</h4>
            <p>ID do pedido: {{ $pedido->id }}</p>
            <p>Cliente: {{ $pedido->cliente_id }}</p>
            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                <h4>Itens do pedido</h4>
                <table border="1" width="100%">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome do produto</th>
                            <th>Data de inclusão do item no pedido</th>
                            <th>#</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($pedido->produtos as $item)
                        <tr>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->nome }}</td>
                            <td>{{ $item->pivot->created_at->format('d-m-Y') }}</td>
                            <td>
                                <form action="{{ route('pedido-produto.destroy', ['pedidoProduto' => $item->pivot->id ]) }}" id="form_{{ $item->pivot->id }}" method="POST">
                                    @method('DELETE')
                                    @csrf
                                    <a href="#" onclick="document.getElementById('form_{{ $item->pivot->id }}').submit()" >Excluir</a>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                <form action="{{ route('pedido-produto.store', ['pedido' => $pedido ]) }}" method="post">
                    @csrf
                   @component('app.pedido_produto._partials.fieldsForm', ['produtos' => $produtos])                       
                   @endcomponent
                </form>
            </div>
        </div>  
    </div>  
@endsection