<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ImageController extends Controller
{
    public function upload(Request $request){
        $dir="test/";
        $image = $request->file('image');

       if ($request->has('image')) {
               $imageName = \Carbon\Carbon::now()->toDateString() . "-" . uniqid() . "." . "png";
               if (!Storage::disk('public')->exists($dir)) {
                   Storage::disk('public')->makeDirectory($dir);
               }
               Storage::disk('public')->put($dir.$imageName, file_get_contents($image));
       }else{
            return response()->json(['message' => trans('/storage/test/'.'def.png')], 200);
       }

       $userDetails = [

           'image' => $imageName,

       ];

      // User::where(['id' => 27])->update($userDetails);

       return response()->json(['message' => trans('/storage/test/'.$imageName)], 200);
   }
}