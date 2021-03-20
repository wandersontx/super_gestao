<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class ItemDetalhe extends Model
{
    protected $table = 'produto_detalhes';
    protected $fillable = ['produto_id', 'comprimento', 'largura', 'altura', 'unidade_id'];

    public function Produto(){
       /*
       App\model\Item -> Item vai representar a tabela produtos
       produto_id -> representa a fk contida dentro de itemDetalhes (ou seja, a tabela produtos_detalhes)
       id -> representa a pk pertencente a App\model\Item (que nesse caso representa a tabela produtos)

       */ 
       return $this->belongsTo('App\model\Item','produto_id','id');
    }
}
