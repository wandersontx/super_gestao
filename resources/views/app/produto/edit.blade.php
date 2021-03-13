@extends('app.layouts.basico')

@section('titulo', 'Produto')
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>Produto - Editar</p>
        </div>
        
        <div class="menu">
            <ul>
                <li><a href="{{ route('produto.index') }}">Voltar</a></li>
                <li><a href="#">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                <form action="{{ route('produto.update', ['produto' => $produto->id ]) }}" method="post">
                    @csrf
                    @method('PUT')
                   @component('app.produto._partials.fieldsForm', ['unidades' => $unidades, 'produto' => $produto])                       
                   @endcomponent
                </form>
            </div>
        </div>  
    </div>  
@endsection