<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;
use App\Models\login;
use App\Models\User;


class LihatData
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next,)
    {
        // $response = Http::withToken($access_token)->get('http://sso.politeknikaceh.ac.id/api/user');
        $access_token = request()->session()->get('access_token');
        $response = Http::withHeaders([
            "Accept" => "application/json",
            "Authorization" => "Bearer" . $access_token
        ])->get('http://sso.politeknikaceh.ac.id/api/user');
             $userArray = $response->json();
        try {
            $nim = $userArray['nomor_induk'];
        }catch (\Throwable $th){
                return redirect('/sso/login') -> withErorr("Failed to get login information! Try again.");
    
        }
        $user = login::where('nomor_induk', $nim)->first();
        if (!$user){
            $user = new login;
            $user-> nim = $userArray['nomor_induk'];
            $user->name = $userArray['name'];
            $user->email = $userArray['email'];
            $user->roles = $userArray['roles'];
            $user->access_token = $userArray['access_token'];
            $user->refresh_token = $userArray['refresh_token'];
            $user->token_type = $userArray['token_type'];

            $user->save();
        }
        // Auth::login($user);
        // return redirect(route("/sso/login"));
        return $next($request);

        // if($response) {

        //    $request->user = json_decode($response);
        //    $user = json_encode($response);
        //    $access_token = $request->bearerToken();
        //    $user = User::where('name', $response['name'])->first();
            // return $request;
        //  /    $user = User::with('Mahasiswa', $response['roles'])->get();
        //   if($user->roles == "Mahasiswa"){`
        //     return redirect($response);
        //   } elseif ($user->roles == "Dosen"){
        //     return redirect('/sso/login');
        //   }
            
        
        // }
        // return redirect('/sso/login');
        // return response(401)->json("unathorized");
    }
}


// $response = Http::withHeaders([
            //     'Accept' => 'application/json',
            //     'Authorization' => 'Bearer '.$access_token,
            // ]);