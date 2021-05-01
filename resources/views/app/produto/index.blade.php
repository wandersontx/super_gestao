@extends('app.layouts.basico')

@section('titulo', 'Produto')
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>Listagem de Produtos</p>
        </div>
        <div class="menu">
            <ul>
                <li><a href="{{ route('produto.create') }}">Novo</a></li>
                <li><a href="#">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div  style="width: 90%; margin-left: auto; margin-right:auto;" >
                 <table border="1" style="border: 1px solid black;" class="tableCenter">
                     <thead>
                         <tr>
                             <th>Nome</th>
                             <th>Descrição</th>
                             <th>Peso</th>
                             <th>Unidade ID</th>
                             <th>Comprimento</th>
                             <th>Altura</th>
                             <th>Largura</th>
                             <th>#</th>
                             <th>#</th>
                             <th>#</th>
                         </tr>
                     </thead>
                     <tbody>
                        @foreach ($produtos as $item)
                            <tr>
                                <td>{{ $item->nome }}</td>
                                <td>{{ $item->descricao }}</td>
                                <td>{{ $item->peso }}</td>
                                <td>{{ $item->unidade_id }}</td>
                                <td>{{ $item->produtoDetalhe->comprimento ?? '' }}</td>
                                <td>{{ $item->produtoDetalhe->altura ?? '' }}</td>
                                <td>{{ $item->produtoDetalhe->largura ?? '' }}</td>
                                <td><a href="{{ route('produto.show', ['produto' => $item->id ]) }}">visualizar</a></td>
                                <td><a href="{{ route('produto.edit', ['produto' => $item->id ]) }}">Editar</a></td>
                                <td>
                                    
                                    <form action="{{ route('produto.destroy', ['produto' => $item->id]) }}" method="post" id="myForm_{{ $item->id }}">
                                        @csrf
                                        @method('delete')
                                        <a href="#" onclick="document.getElementById('myForm_{{ $item->id }}').submit()">Excluir</a>
                                    </form>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="12">
                                   <p>Pedidos</p>
                                   @foreach ($item->pedidos as $pedido)
                                       <a href="{{ route('pedido-produto.create',['pedido' => $pedido->id]) }}">
                                        Pedido: {{ $pedido->id }},
                                       </a>
                                   @endforeach
                                </td>
                            </tr>
                        @endforeach
                     </tbody>
                 </table>  
                 {{ $produtos->appends($request)->links() }} 
                 {{ 'Exibindo '.$produtos->count().' registro(s) de '.$produtos->total() }}
            </div>
        </div>  
    </div>  
@endsection 