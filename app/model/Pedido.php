<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    protected $fillable = ['cliente_id'];

    public function produtos()
    {
      // pedido_produtos tabela intermediaria do relacionamento N x N (nomes padronizados framework)
      // return $this->belongsToMany('\App\model\Produto', 'pedido_produtos');

      //belongsToMany -> um produto pertence a muitos produtos

      //nomes nao padronizados
      return $this->belongsToMany('App\model\Item', 'pedido_produtos', 'pedido_id','produto_id')->withPivot('created_at', 'id'); //withPivot('created_at'); -> para acessar colunas da tabela intermediaria no relacionamento N X N
      /*
       Params
       1 > Modelo do relacionamento N x N em relação o modelo que estamos implementando. ou seja, Item em relação a Pedido
       2 > Tabela auxiliar que armazena os registros de relacionamento
       3 > Representa o nome da FK da tabela mapeada pelo modelo na tabela de relacionamento.
       4 > Representa o nome da FK da tabela mapeada pelo model utilizado no  relacionamento que estamos implementando. item(produto) representado por produto_id
      */
    }
}
