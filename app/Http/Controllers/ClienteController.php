<?php

namespace App\Http\Controllers;

use App\model\Cliente;
use Facade\FlareClient\Http\Client;
use Illuminate\Http\Request;

class ClienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $clientes = Cliente::orderBy('nome')->paginate(10);
        return view('app.cliente.index',['clientes' => $clientes, 'request' => $request->all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('app.cliente.create');
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
            'nome'  => 'min:3|max:40',
        ];

        $feedback = [
            'min'      => 'O campo :attribute deve conter no mínimo :min caracteres.',
            'max'      => 'O campo :attribute deve conter no máximo :max caracteres.',
        ];

        $request->validate($regras, $feedback);
        $cliente = new Cliente();
        $cliente->create($request->all());

        return redirect()->route('cliente.index');
        
          
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
        $cliente = Cliente::find($id);
        return view('app.cliente.edit', ['cliente' => $cliente]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\model\Cliente $cliente
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cliente $cliente)
    {
        $regras = [
            'nome'  => 'min:3|max:40',
        ];

        $feedback = [
            'min'      => 'O campo :attribute deve conter no mínimo :min caracteres.',
            'max'      => 'O campo :attribute deve conter no máximo :max caracteres.',
        ];

        $request->validate($regras, $feedback);
        $cliente->update($request->all());
        return redirect()->route('cliente.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cliente = Cliente::find($id);
        $cliente->delete();
        return redirect()->route('cliente.index');
    }
}
