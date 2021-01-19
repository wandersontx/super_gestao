<?php

namespace App\Http\Controllers;

use App\model\MotivoContato;
use Illuminate\Http\Request;

class PrincipalController extends Controller
{
    public function principal()
    {   
        $listaMotivos = MotivoContato::all();
        return view('site.principal', compact('listaMotivos'));
        
    }
}
