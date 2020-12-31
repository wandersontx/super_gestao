<form  action="{{ route('site.contato') }}" method="post">
    @csrf
    <input type="text" placeholder="Nome" name="nome" class="borda-preta">
    <br>
    <input type="text" placeholder="Telefone" name="telefone" class="borda-preta">
    <br>
    <input type="text" placeholder="E-mail" name="email" class="borda-preta">
    <br>
    <select class="borda-preta" name="motivo_contato">
        <option value="">Qual o motivo do contato?</option>
        <option value="duvida">Dúvida</option>
        <option value="elogio">Elogio</option>
        <option value="reclamacao">Reclamação</option>
    </select>
    <br>
    <textarea class="borda-preta" name="messagem" >Preencha aqui a sua mensagem</textarea>
    <br>
    <button type="submit" class="borda-preta">ENVIAR</button>
</form>