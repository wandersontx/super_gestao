<?php

namespace App\Http\Controllers;

use App\model\Produto;
use App\model\ProdutoDetalhe;
use App\model\Unidade;
use Illuminate\Http\Request;

class ProdutoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $produtos = Produto::orderBy('id', 'asc')->paginate(10);

        //dd($produtos);

        return view('app.produto.index', ['produtos' => $produtos, 'request' => $request->all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $unidades = Unidade::all();       
        return view('app.produto.create', compact('unidades'));
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
            'nome'       => 'min:3|max:40',
            'descricao'  => 'min:3|max:2000',
            'peso'       => 'required|integer',
            'unidade_id' => 'exists:unidades,id'
        ];
        $feedback = [
            'required' => 'O campo :attribute deve ser preenchido',
            'min'      => 'O campo :attribute deve conter pelo menos :min caracteres',
            'max'      => 'O campo :attribute deve conter no máximo :max caracteres',
            'exists'   => 'O campo unidade deve existir na tabela unidades.'
        ];
        $request->validate($regras, $feedback);
        Produto::create($request->all());
        return redirect()->route('produto.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\model\Produto  $produto
     * @return \Illuminate\Http\Response
     */
    public function show(Produto $produto)
    {
        return view('app.produto.show', ['produto' => $produto]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\model\Produto  $produto
     * @return \Illuminate\Http\Response
     */
    public function edit(Produto $produto)
    {
        $unidades = Unidade::all();  
        return view('app.produto.edit', ['produto' => $produto, 'unidades' => $unidades]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\model\Produto  $produto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Produto $produto)
    {
        $regras = [
            'nome'       => 'min:3|max:40',
            'descricao'  => 'min:3|max:2000',
            'peso'       => 'required|integer',
            'unidade_id' => 'exists:unidades,id'
        ];
        $feedback = [
            'required' => 'O campo :attribute deve ser preenchido',
            'min'      => 'O campo :attribute deve conter pelo menos :min caracteres',
            'max'      => 'O campo :attribute deve conter no máximo :max caracteres',
            'exists'   => 'O campo unidade deve existir na tabela unidades.'
        ];
        $request->validate($regras, $feedback);        
        $produto->update($request->all());
        return redirect()->route('produto.show', ['produto' => $produto]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\model\Produto  $produto
     * @return \Illuminate\Http\Response
     */
    public function destroy(Produto $produto)
    {
        $produto->delete();
        return redirect()->route('produto.index');

    }
}
