<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

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
       $access_token = request()->session()->get('access_token');
        $response = Http::withToken($access_token)->get('http://sso.politeknikaceh.ac.id/api/user');
        if($response) {
            $request->user = json_decode($response);
         //   $response 
            return $next($request);
        }
        return response(401)->json("unathorized");
    }
}


// $response = Http::withHeaders([
            //     'Accept' => 'application/json',
            //     'Authorization' => 'Bearer '.$access_token,
            // ]);