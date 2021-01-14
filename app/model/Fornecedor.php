<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Fornecedor extends Model
{   
    //Utilizando o recurso de trait para implementar softdeletes
    use SoftDeletes;

    //forma de sobrescrever a nomeação automatica do eloquent
    protected $table = 'fornecedores';
    //defini os atributos que poderam ser salvos no banco de dados
    //atraves do metodo statico create.
    protected $fillable = ['nome', 'site', 'uf', 'email'];
}
