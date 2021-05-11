<?php

namespace App\Http\Controllers;

use App\model\Pedido;
use App\model\PedidoProduto;
use App\model\Produto;
use Illuminate\Http\Request;

class PedidoProdutoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     * @param \App\model\Pedido $pedido
     * @return \Illuminate\Http\Response
     */
    public function create(Pedido $pedido)
    {
        $produtos = Produto::all();
        //Por termos um obj instanciado podemos implmentar o eager loading de forma alternativa
        //$pedido->produtos;
        return view('app.pedido_produto.create', ['pedido' => $pedido, 'produtos' => $produtos]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param \App\model\Pedido $pedido
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Pedido $pedido)
    {
        $regras = ['produto_id' => 'required', 'quantidade' => 'required'];
        $feedback = ['required' => 'O campo produto é obrigatório'];
        $request->validate($regras, $feedback);

        //Formato de inserção tradicional
        // $pedidoProduto = new PedidoProduto();
        // $pedidoProduto->pedido_id = $pedido->id;
        // $pedidoProduto->produto_id = $request->input('produto_id');
        // $pedidoProduto->quantidade = $request->input('quantidade');
        // $pedidoProduto->save();

        // quando chamamos o metodo em forma de atributo (metodo que representa o relacionamento)
        // o retorno da instrução será a relação de registros relacionados ( os registros dos relacionamentos entre produtos e pedidos)
        //$pedido->produtos

        //temos como retorno um objeto que mapeia o relacionamento.
        $pedido->produtos()->attach(
            $request->get('produto_id'),
            ['quantidade' => $request->get('quantidade')]
        );

        return redirect()->route('pedido-produto.create', ['pedido' => $pedido->id]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\model\PedidoProduto $pedidoProduto 
     * @return \Illuminate\Http\Response
     */
    public function destroy(PedidoProduto $pedidoProduto)
    {
      
        // print_r($pedido->getAttributes());
        // echo '<hr>';
        // print_r($produto->getAttributes());

        // Abordagem convencional
        // PedidoProduto::where([
        //     'pedido_id'  => $pedido->id,
        //     'produto_id' => $produto->id
        // ])->delete();


        // detach (delete pelo relacionamento)
        // $pedido->produtos()->detach($produto->id);


        // Removendo pelo ID da tabela intermediaria do relacionamento N x N
        $pedido_id = $pedidoProduto->getAttribute('pedido_id');
       // dd(  $pedidoProduto->getAttributes());
        $pedidoProduto->delete();
        return redirect()->route('pedido-produto.create', ['pedido' => $pedido_id]);
    }
}
