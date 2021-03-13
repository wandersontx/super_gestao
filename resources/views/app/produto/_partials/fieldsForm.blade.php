
    <input type="text" name="nome" id="" placeholder="Digite o nome" class="borda-preta" value="{{ old('nome') ?? $produto->nome ?? '' }}">
    @if ($errors->has('nome'))
        <div class="texto-erro">{{ $errors->first('nome') }}</div>
    @endif
    <input type="text" name="descricao" id="" placeholder="Digite a descrição" class="borda-preta" value="{{ old('descricao') ?? $produto->descricao ?? '' }}">
    @if ($errors->has('descricao'))
        <div class="texto-erro">{{ $errors->first('descricao') }}</div>
    @endif
    <input type="text" name="peso" id="" placeholder="Digite o peso" class="borda-preta" max="2" value="{{ old('peso') ?? $produto->peso ?? '' }}">
    @if ($errors->has('peso'))
        <div class="texto-erro">{{ $errors->first('peso') }}</div>
    @endif
    <select name="unidade_id" id="">
        <option value="">-- Selecione uma opção --</option>
        @foreach ($unidades as $item)
            <option value="{{ $item->id  }}" {{ $item->id == old('unidade_id') || $produto->unidade_id ? 'selected' : '' }}>{{ $item->descricao }}</option>
        @endforeach    
    </select>
    @if ($errors->has('unidade_id'))
        <div class="texto-erro">{{ $errors->first('unidade_id') }}</div>
    @endif
    <button type="submit" class="borda-preta">Cadastrar</button>    
