<?php

namespace App\Http\Middleware;

use Closure;

class AutenticacaoMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $metodoAutenticao, $perfil)
    {
        echo 'Perfil recebido '. strtoupper($perfil).'<br>';
        echo 'Parametro recebido '. strtoupper($metodoAutenticao).'<br>';
        if(false)
            return $next($request);
        else
            return Response('Acesso negado! rota exige autenticação');
    }
}
