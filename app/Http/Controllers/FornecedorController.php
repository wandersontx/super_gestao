<?php

namespace App\Http\Controllers;

use App\model\Fornecedor;
use Illuminate\Http\Request;

class FornecedorController extends Controller
{
    public function index()
    {
      return view('app.fornecedor.index');
    }

    public function listar(Request $request)
    {
      $fornecedores = Fornecedor::where('nome','ilike', '%'.$request->input('nome').'%')
                      ->where('site','ilike', '%'.$request->input('site').'%')
                      ->where('uf','ilike', '%'.$request->input('uf').'%')
                      ->where('email','ilike', '%'.$request->input('email').'%')
                      ->get();
      return view('app.fornecedor.listar', ['fornecedores' => $fornecedores]);
    }

    public function adicionar(Request $request)
    {
      if(!empty($request->input('_token'))){
         $regras = [
           'nome'  => 'min:3|max:40',
           'site'  => 'required',
           'uf'    => 'min:2|max:2',
           'email' => 'email'
         ];

         $feedback = [
           'required' => 'O campo :attribute é deve ser preenchido.',
           'min'      => 'O campo :attribute deve conter no mínimo :min caracteres.',
           'max'      => 'O campo :attribute deve conter no máximo :max caracteres.',
           'email'    => 'O campo de e-mail deve conter um e-mail válido.',           
         ];

         $request->validate($regras, $feedback);
         $fornecedor = new Fornecedor();
         //create -> verifica os parametros e vai preencher o objeto
         //de acordo com que está liberado na variavel fillable.
         $fornecedor->create($request->all());
      }

      return view('app.fornecedor.adicionar');
    }

}
