<input type="text" name="produto_id" id="" placeholder="Id do produto" class="borda-preta" value="{{ old('produto_id') ?? $produtoDetalhe->produto_id ?? '' }}">
@if ($errors->has('produto_id'))
    <div class="texto-erro">{{ $errors->first('produto_id') }}</div>
@endif
<input type="text" name="comprimento" id="" placeholder="comprimento" class="borda-preta" value="{{ old('comprimento') ?? $produtoDetalhe->comprimento ?? '' }}">
@if ($errors->has('comprimento'))
    <div class="texto-erro">{{ $errors->first('comprimento') }}</div>
@endif
<input type="text" name="largura" id="" placeholder="largura" class="borda-preta" max="2" value="{{ old('largura') ?? $produtoDetalhe->largura ?? '' }}">
@if ($errors->has('largura'))
    <div class="texto-erro">{{ $errors->first('largura') }}</div>
@endif
<input type="text" name="altura" id="" placeholder="altura" class="borda-preta" max="2" value="{{ old('altura') ?? $produtoDetalhe->altura ?? '' }}">
@if ($errors->has('altura'))
    <div class="texto-erro">{{ $errors->first('altura') }}</div>
@endif
<select name="unidade_id" id="">
    <option value="">-- Selecione uma opção --</option>
    @foreach ($unidades as $item)
        <option value="{{ $item->id  }}" {{ $item->id == old('unidade_id') || isset($produtoDetalhe->unidade_id) ? 'selected' : '' }}>{{ $item->descricao }}</option>
    @endforeach    
</select>
@if ($errors->has('unidade_id'))
    <div class="texto-erro">{{ $errors->first('unidade_id') }}</div>
@endif
<button type="submit" class="borda-preta">Cadastrar</button>   