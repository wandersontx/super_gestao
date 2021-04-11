{{-- <input type="text" name="nome" id="" placeholder="Nome do cliente" class="borda-preta" value="{{ old('nome') ?? $cliente->nome ?? '' }}">
@if ($errors->has('produto_id'))
    <div class="texto-erro">{{ $errors->first('nome') }}</div>
@endif --}}
<select name="cliente_id" id="">
    <option value="">-- Selecione um cliente --</option>
    @foreach ($clientes as $item)
        <option value="{{ $item->id  }}" {{ ($pedido->cliente_id ?? old('cliente_id')) == $item->id ? 'selected' : '' }}>{{ $item->nome }}</option>
    @endforeach    
</select>
@if ($errors->has('cliente_id'))
<div class="texto-erro">{{ $errors->first('cliente_id') }}</div>
@endif
<button type="submit" class="borda-preta">Cadastrar</button>   