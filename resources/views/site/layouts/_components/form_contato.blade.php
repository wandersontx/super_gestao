{{ $slot }}

@isset($frase)
{{ $frase }}
@endisset


<form  action="{{ route('site.contato') }}" method="post">
    @csrf
    <input type="text" placeholder="Nome" name="nome" class="{{ $classe }}" value="{{ old('nome') }}">
    @if ($errors->has('nome'))
        {{ $errors->first('nome') }}
    @endif
    <br>
    <input type="text" placeholder="Telefone" name="telefone" class="{{ $classe }}" value="{{ old('telefone') }}">
    @if ($errors->has('telefone'))
        {{ $errors->first('telefone') }}
    @endif
    <br>
    <input type="text" placeholder="E-mail" name="email" class="{{ $classe }}" value="{{ old('email') }}">
    @if ($errors->has('email'))
        {{ $errors->first('email') }}
    @endif
    <br>
    <select class="{{ $classe }}" name="motivo_contatos_id">
        <option value="" selected>Qual o motivo do contato?</option>
        @foreach ($motivos_contato as $key => $value)
            <option value="{{ $value->id }}" {{ $value->id == old('motivo_contato') ? 'selected' : '' }}>{{ $value->motivo_contato }}</option>
        @endforeach
    </select>
    @if ($errors->has('motivo_contatos_id'))
    {{ $errors->first('motivo_contatos_id') }}
    @endif
    <br>
    <textarea class="{{ $classe }}" name="mensagem">{{ !empty(old('mensagem')) ? old('mensagem') : 'Preencha aqui a sua mensagem' }}</textarea>
    @if ($errors->has('mensagem'))
    {{ $errors->first('mensagem') }}
    @endif
    <br>
    <button type="submit" class="{{ $classe }}">ENVIAR</button>
</form>

