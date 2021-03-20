<?php

namespace App\Http\Controllers;

use App\model\ProdutoDetalhe;
use App\model\Unidade;
use Illuminate\Http\Request;

class ProdutoDetalheController extends Controller
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
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $unidades = Unidade::all();
        return view('app.produtoDetalhe.create', compact('unidades'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $regras = [
            'produto_id'  => 'exists:produtos,id',
            'comprimento' => 'required',
            'largura'     => 'required',
            'altura'      => 'required',
            'unidade_id'  => 'exists:unidades,id'
        ];
        $feedback = [
            'required'          => 'O campo :attribute deve ser preenchido',
            'unidade_id.exists' => 'O campo unidade deve existir na tabela unidades.',
            'produto_id.exists' => 'O campo id do produto deve existir na tabela produtos.'
        ];
        $request->validate($regras, $feedback);

        ProdutoDetalhe::create($request->all());
        redirect()->route('produtoDetalhe.create');

    }

    /**
     * Display the specified resource.
     *
     * @param  App\model\ProdutoDetalhe $produtoDetalhe
     * @return \Illuminate\Http\Response
     */
    public function show(ProdutoDetalhe $produtoDetalhe)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  App\model\ProdutoDetalhe $produtoDetalhe
     * @return \Illuminate\Http\Response
     */
    public function edit(ProdutoDetalhe $produtoDetalhe)
    {
        $unidades = Unidade::all();
        return view('app.produtoDetalhe.edit', ['unidades' => $unidades ,'produtoDetalhe' => $produtoDetalhe]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\model\ProdutoDetalhe $produtoDetalhe
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProdutoDetalhe $produtoDetalhe)
    {
        $regras = [
            'produto_id'  => 'exists:produtos,id',
            'comprimento' => 'required',
            'largura'     => 'required',
            'altura'      => 'required',
            'unidade_id'  => 'exists:unidades,id'
        ];
        $feedback = [
            'required'          => 'O campo :attribute deve ser preenchido',
            'unidade_id.exists' => 'O campo unidade deve existir na tabela unidades.',
            'produto_id.exists' => 'O campo id do produto deve existir na tabela produtos.'
        ];
        $request->validate($regras, $feedback);
        $produtoDetalhe->update($request->all());
        return redirect()->route('produtoDetalhe.create');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  App\model\ProdutoDetalhe $produtoDetalhe
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProdutoDetalhe $produtoDetalhe)
    {
        //
    }
}
