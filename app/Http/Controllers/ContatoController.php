<?php

namespace App\Http\Controllers;

use App\model\MotivoContato;
use App\model\SiteContato;
use Illuminate\Http\Request;

class ContatoController extends Controller
{

    public function create()
    {
        $listaMotivos = MotivoContato::all();
        return view('site.contato', compact('listaMotivos'));
    }

    public function save(Request $request)
    {
       $request->validate([
           'nome' => 'min:3|max:40',
           'email' => 'required',
           'telefone' => 'required',
           'motivo_contato' => 'required',
           'mensagem' => 'required',
       ]); 
       SiteContato::create($request->all());        
    }
}
