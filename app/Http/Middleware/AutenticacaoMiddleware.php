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
        session_start();
        if (isset($_SESSION['email']) && !empty($_SESSION['email'])) {
            return $next($request);
        } else {
            redirect()->route('site.login', ['erro' => 2]);
        }

    }
}
