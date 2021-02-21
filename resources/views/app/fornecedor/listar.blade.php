@extends('app.layouts.basico')

@section('titulo', 'fornecedor')
    
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>fornecedor - Listar</p>
        </div>
        
        <div class="menu">
            <ul>
                <li><a href="{{ route('app.fornecedor.adicionar') }}">Novo</a></li>
                <li><a href="{{ route('app.fornecedor') }}">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div style="width: 90%; margin-left: auto; margin-right:auto;">
                 <table border="1" style="border: 1px solid black;">
                     <thead>
                         <tr>
                             <th>Nome</th>
                             <th>Site</th>
                             <th>UF</th>
                             <th>E-mail</th>
                             <th>#</th>
                             <th>#</th>
                         </tr>
                     </thead>
                     <tbody>
                        @foreach ($fornecedores as $item)
                            <tr>
                                <td>{{ $item->nome }}</td>
                                <td>{{ $item->site }}</td>
                                <td>{{ $item->uf }}</td>
                                <td>{{ $item->email }}</td>
                                <td><a href="{{ route('app.fornecedor.editar', $item->id) }}">Editar</a></td>
                                <td>Excluir</td>
                            </tr>
                        @endforeach
                     </tbody>
                 </table>  
                 {{ $fornecedores->appends($request)->links() }} 
                 {{-- appends -> formar de acomplar as requisições de paginação, filtros realizados na tela de consulta --}}           
                 {{ 'Exibindo '.$fornecedores->count().' registro(s) de '.$fornecedores->total() }}
            </div>
        </div>  
    </div>  
@endsection 