<?php

use App\Http\Controllers\api\BeritaController;
use App\Http\Controllers\api\ImageController;
use App\Http\Controllers\api\PDFViewController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('ApiBerita', [BeritaController::class, 'index']);

Route::Post('UploadImage',[ImageController::class,'upload']);

Route::get('pdf-view', [PDFViewController::class,'index']);