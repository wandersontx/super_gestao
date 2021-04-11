<select name="produto_id" id="">
    <option value="">-- Selecione um produdo --</option>
    @foreach ($produtos as $item)
        <option value="{{ $item->id  }}" {{ ($pedido->produto_id ?? old('produto_id')) == $item->id ? 'selected' : '' }}>{{ $item->nome }}</option>
    @endforeach    
</select>
@if ($errors->has('produto_id'))
<div class="texto-erro">{{ $errors->first('produto_id') }}</div>
@endif
<button type="submit" class="borda-preta">Cadastrar</button>   