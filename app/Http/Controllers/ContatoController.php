<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContatoController extends Controller
{
    public function contato(Request $request)
    {
        //dd($request->all());
        //dd($request->only('nome','motivo_contato'));
        dd($request->input('mensagem'));
        return view('site.contato');
    }
}
