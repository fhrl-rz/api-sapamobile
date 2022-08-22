<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class LihatData
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {

        if($request-> lihatdata == 'Berhasil Login'){
            return redirect()->intended('sso/connect');
        } else if($request-> lihatdata == 'Tidak Berhasil Login'){
            return redirect()->intended('sso/login');
        }
        return $next($request);
    }
}
