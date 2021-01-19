<?php

namespace App\Http\Middleware;

use App\model\LogAcesso;
use Closure;
use Facade\FlareClient\Http\Response;

class LogAcessoMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $ip = $request->server->get('REMOTE_ADDR');
        $rota = $request->getRequestUri();
        LogAcesso::create(['log' => 'IP '.$ip.' requisitou a rota '.$rota]);
        //return Response('Resposta a partir do middleware');
        return $next($request);
        //$resposta = $next($request);
        // $resposta->setStatusCode(201,'modificando o status de resposta');
        // dd($resposta);
    }
}
