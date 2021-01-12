<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Fornecedor extends Model
{   
    //forma de sobrescrever a nomeação automatica do eloquent
    protected $table = 'fornecedores';
    //defini os atributos que poderam ser salvos no banco de dados
    //atraves do metodo statico create.
    protected $fillable = ['nome', 'site', 'uf', 'email'];
}
