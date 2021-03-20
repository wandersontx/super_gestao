<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    protected $table = 'produtos';
    protected $fillable = ['nome', 'descricao', 'peso', 'unidade_id'];

    public function produtoDetalhe() {
        /*
        App\model\ItemDetalhe -> ItemDetalhe vai representar a tabela produtos_detalhes
        produto_id -> nome da coluna que representa a fk na tabela produto_detalhes (representada por itemDetalhe)
        id -> nome da coluna que representa a pk da tabela mapeada pela classe Item (ou seja, estamos falando da tabela produtos)

        Leitura 
        - A classe Item representa a tabela produtos
        - que tem um relacionamento com classe ItemDetalhe - que representa a tabela produtos_detalhes
        - Tendo a tabela produtos_detalhes (classe itemDetalhes) um fk (produto_id)
        - que aponta para a pk(id) da tabela produtos (classe Item)
        */
        return $this->hasOne('App\model\ItemDetalhe', 'produto_id','id');
    }
}
