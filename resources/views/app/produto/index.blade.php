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
            <div style="width: 90%; margin-left: auto; margin-right:auto;">
                 <table border="1" style="border: 1px solid black;">
                     <thead>
                         <tr>
                             <th>Nome</th>
                             <th>Descrição</th>
                             <th>Peso</th>
                             <th>Unidade ID</th>
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
                                <td><a href="#">Editar</a></td>
                                <td><a href="#">Excluir</a></td>
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