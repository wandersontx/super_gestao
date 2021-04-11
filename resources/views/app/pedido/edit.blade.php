@extends('app.layouts.basico')

@section('titulo', 'pedido')
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>pedido - Editar</p>
        </div>
        
        <div class="menu">
            <ul>
                <li><a href="{{ route('pedido.index') }}">Voltar</a></li>
                <li><a href="#">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                <form action="{{ route('pedido.update', ['pedido' => $pedido->id ]) }}" method="post">
                    @csrf
                    @method('PUT')
                   @component('app.pedido._partials.fieldsForm', ['clientes' => $clientes, 'pedido' => $pedido,])                       
                   @endcomponent
                </form>
            </div>
        </div>  
    </div>  
@endsection