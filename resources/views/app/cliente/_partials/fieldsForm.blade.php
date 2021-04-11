<input type="text" name="nome" id="" placeholder="Nome do cliente" class="borda-preta" value="{{ old('nome') ?? $cliente->nome ?? '' }}">
@if ($errors->has('produto_id'))
    <div class="texto-erro">{{ $errors->first('nome') }}</div>
@endif
<button type="submit" class="borda-preta">Cadastrar</button>   