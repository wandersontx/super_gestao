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
    //Podemos também crair variaveis contendo os respectivos arrays e depois passar estes como parametros de validate
       $request->validate(
           [
                'nome' => 'min:3|max:40',
                'email' => 'email',
                'telefone' => 'required',
                'motivo_contatos_id' => 'required',
                'mensagem' => 'required',
           ],
           [
                'required' => 'O campo :attribute é obrigatório',
                'email' => 'O campo :attribute deve ser um e-mail válido',
                'min' => 'O campo :attribute deve ter no minimo :min caracteres',
           ]
        ); 
       SiteContato::create($request->all());   
       return redirect()->route('site.index');     
    }
}
