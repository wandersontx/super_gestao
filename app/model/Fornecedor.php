<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Fornecedor extends Model
{   
    //forma de sobrescrever a nomeação automatica do eloquent
    protected $table = 'fornecedores';
}
