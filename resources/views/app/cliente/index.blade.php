@extends('app.layouts.basico')

@section('titulo', 'Cliente')
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>Listagem de Clientes</p>
        </div>
        <div class="menu">
            <ul>
                <li><a href="{{ route('cliente.create') }}">Novo</a></li>
                <li><a href="#">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div  style="width: 90%; margin-left: auto; margin-right:auto;" >
                 <table border="1" style="border: 1px solid black;" class="tableCenter">
                     <thead>
                         <tr>
                             <th>Nome</th>
                             <th>#</th>
                             <th>#</th>
                         </tr>
                     </thead>
                     <tbody>
                        @foreach ($clientes as $item)
                            <tr>
                                <td>{{ $item->nome }}</td>
                                <td><a href="{{ route('cliente.edit', ['cliente' => $item->id ]) }}">Editar</a></td>
                                <td>
                                    
                                    <form action="{{ route('cliente.destroy', ['cliente' => $item->id]) }}" method="post" id="myForm_{{ $item->id }}">
                                        @csrf
                                        @method('delete')
                                        <a href="#" onclick="document.getElementById('myForm_{{ $item->id }}').submit()">Excluir</a>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                     </tbody>
                 </table>  
                 {{ $clientes->appends($request)->links() }} 
                 {{ 'Exibindo '.$clientes->count().' registro(s) de '.$clientes->total() }}
            </div>
        </div>  
    </div>  
@endsection 