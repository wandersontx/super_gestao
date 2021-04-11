@extends('app.layouts.basico')

@section('titulo', 'Cliente')
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>Listagem de Pedidos</p>
        </div>
        <div class="menu">
            <ul>
                <li><a href="{{ route('pedido.create') }}">Novo</a></li>
                <li><a href="#">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div  style="width: 90%; margin-left: auto; margin-right:auto;" >
                 <table border="1" style="border: 1px solid black;" class="tableCenter">
                     <thead>
                         <tr>
                             <th>ID Pedido</th>
                             <th>Cliente</th>
                             <th>#</th>
                             <th>#</th>
                             <th>#</th>
                             <th>#</th>
                         </tr>
                     </thead>
                     <tbody>
                        @foreach ($pedidos as $item)
                            <tr>
                                <td>{{ $item->id }}</td>
                                <td>{{ $item->cliente_id }}</td>
                                <td><a href="{{ route('pedido-produto.create', ['pedido' => $item->id ]) }}">Add Produtos</a></td>
                                <td><a href="{{ route('pedido.show', ['pedido' => $item->id ]) }}">visualizar</a></td>
                                <td><a href="{{ route('pedido.edit', ['pedido' => $item->id ]) }}">Editar</a></td>
                                <td>
                                    
                                    <form action="{{ route('pedido.destroy', ['pedido' => $item->id]) }}" method="post" id="myForm_{{ $item->id }}">
                                        @csrf
                                        @method('delete')
                                        <a href="#" onclick="document.getElementById('myForm_{{ $item->id }}').submit()">Excluir</a>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                     </tbody>
                 </table>  
                 {{ $pedidos->appends($request)->links() }} 
                 {{ 'Exibindo '.$pedidos->count().' registro(s) de '.$pedidos->total() }}
            </div>
        </div>  
    </div>  
@endsection 