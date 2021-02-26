@extends('app.layouts.basico')

@section('titulo', 'Produto')
@section('contentApp')
    <div class="conteudo-pagina">
        <div class="titulo-pagina-2">
            <p>Produto - Adicionar</p>
        </div>
        
        <div class="menu">
            <ul>
                <li><a href="{{ route('produto.index') }}">Voltar</a></li>
                <li><a href="#">Consulta</a></li>
            </ul>
        </div>
        
        <div class="informacao-pagina">
            <div style="width: 30%; margin-left: auto; margin-right:auto;">
                <form action="{{ route('produto.store') }}" method="post">
                    @csrf
                    <input type="text" name="nome" id="" placeholder="Digite o nome" class="borda-preta" value="">
                    <input type="text" name="descricao" id="" placeholder="Digite a descrição" class="borda-preta" value="">
                    <input type="text" name="peso" id="" placeholder="Digite o peso" class="borda-preta" max="2" value="">
                    <select name="unidade_id" id="">
                        <option value="">-- Selecione uma opção --</option>
                        @foreach ($unidades as $item)
                            <option value="{{ $item->id }}">{{ $item->descricao }}</option>
                        @endforeach    
                    </select>
                    <button type="submit" class="borda-preta">Cadastrar</button>
                </form>
            </div>
        </div>  
    </div>  
@endsection