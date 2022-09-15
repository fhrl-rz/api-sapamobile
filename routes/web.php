<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\api\PDFViewController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/sso/login', function (){

    request()->session()->put('state', $state = str()->random(40));


    $query = http_build_query([
        'client_id' => '7',
        'redirect_uri' =>'http://localhost:8000/sso/callback',
        'response_type'=> 'code',
        'scope' => 'view-user',
        'state'=> $state,
    ]);
    return redirect('http://sso.politeknikaceh.ac.id/oauth/authorize?'. $query); // ke SSO


})-> name('sso.login')->middleware('guest');

Route::get('/sso/callback', function (){

    $state = request()->session()->pull('state');
    // dd($state);
    throw_unless(
        strlen($state) > 0 && $state === request()->state,
        InvalidArgumentException::class
    );
    $response = Http::asForm()->post('http://sso.politeknikaceh.ac.id/oauth/token', [
        'grant_type' => 'authorization_code',
        'client_id' => '7',
        'client_secret'=> 'lsk1a3j4bTnkWlc8sXY5rZY1qrq9CM21Z6gdykEy',
        'redirect_uri' =>'http://localhost:8000/sso/callback',
        'code' => request()-> code
    ]);
    // return $response->json();
    //json_encode($response);
   request()->session()->put($response->json());
    return redirect(route('sso.connect'));

})-> name('sso.callback')->middleware('guest');

Route::get('sso/connect', function (){
    $access_token = request()->session()->get('access_token');
    $response = Http::withToken($access_token)->get('http://sso.politeknikaceh.ac.id/api/user');
    $user = $response->json();
    try {
        $nim = $user['nomor_induk'];
    }catch (\Throwable $th){
            return redirect('sso.login') -> withErorr("Failed login");

    }
    $user = User::where('nim', $response['nomor_induk'])->first();
    if (!$user){
        $user = new User;

    }

   // return request()->session()->all();
   

// return $response->json();
    // json_encode($response);
    // $user = json_encode($response);
    // if(!$user){
    //     $user = User::create([
    //         'email' => $response['email'],
    //         'name' => $response['name'],
    //         'nim' => $response['nomor_induk'],
    //         'roles'=> $response['roles'],
    //         'password' => null,
    //         'is_logged_in_with_sso' => true
    //     ]);
    // }

})->name('sso.connect')->middleware('lihatdata');

Route::get('/download_pdf', function(){
    return  view('pdf');
});


// dd($user);
    //    dd(auth()->login($user));
    //     if(auth()->login($user)){
    //         $user = auth()->user();
    //         $acces_token['token'] =  $user->createToken('nApp')->accessToken;
    //         $data['user'] = $user;
    //         $acces_token['token']->expires_at = Carbon::now()->addDays(1);
    //         $acces_token['token']->save();
    //         return response()->json([
    //            'data' => $data,
    //            'pesan' => 'Login Berhasil',
    //         ],200);
    //     }
    // else{
    //     return response()->json(['error'=>'DATA TIDAK ADA'], 401);
   // }