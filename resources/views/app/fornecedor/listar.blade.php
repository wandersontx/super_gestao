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
            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                  <h6>será uma lista de fornecedores</h6>              
            </div>
        </div>  
    </div>  
@endsection