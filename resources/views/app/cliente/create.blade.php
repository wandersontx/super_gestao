@extends('app.layouts.basico')

@section('titulo', 'Cliente')
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>Cliente - Adicionar</p>
        </div>
        
        <div class="menu">
            <ul>
                <li><a href="{{ route('cliente.index') }}">Voltar</a></li>
                <li><a href="#">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                <form action="{{ route('cliente.store') }}" method="post">
                    @csrf
                   @component('app.cliente._partials.fieldsForm')                       
                   @endcomponent
                </form>
            </div>
        </div>  
    </div>  
@endsection