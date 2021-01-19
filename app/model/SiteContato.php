<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class SiteContato extends Model
{
    protected $fillable = [ 'nome', 'telefone', 'email', 'motivo_conatos_id', 'mensagem'];
}
