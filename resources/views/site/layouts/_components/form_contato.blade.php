{{ $slot }}

@isset($frase)
{{ $frase }}
@endisset

<form  action="{{ route('site.contato') }}" method="post">
    @csrf
    <input type="text" placeholder="Nome" name="nome" class="{{ $classe }}" value="{{ old('nome') }}">
    <br>
    <input type="text" placeholder="Telefone" name="telefone" class="{{ $classe }}" value="{{ old('telefone') }}">
    <br>
    <input type="text" placeholder="E-mail" name="email" class="{{ $classe }}" value="{{ old('email') }}">
    <br>
    <select class="{{ $classe }}" name="motivo_contato">
        <option value="">Qual o motivo do contato?</option>
        <option value="1">Dúvida</option>
        <option value="2">Elogio</option>
        <option value="3">Reclamação</option>
    </select>
    <br>
    <textarea class="{{ $classe }}" name="mensagem">{{ !empty(old('mensagem')) ? old('mensagem') : 'Preencha aqui a sua mensagem' }}</textarea>
    <br>
    <button type="submit" class="{{ $classe }}">ENVIAR</button>
</form>

