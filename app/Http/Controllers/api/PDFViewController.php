<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use File;
use Response;

class PDFViewController extends Controller
{
    public function index(){
        
        return Response::make(file_get_contents('pdf/PA-1.pdf'), 200, [
                       'content-type'=>'application/pdf',
                   ]);
   }
}
