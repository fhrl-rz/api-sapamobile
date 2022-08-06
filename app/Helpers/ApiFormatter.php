<?php

namespace App\Helpers;

class ApiFormatter {
    protected static $respone =[
        'code' => null,
        'message' => null,
        'data'=> null,
    ];

    public static function createApi($code = null, $message = null, $data = null)
    {
        self::$respone['code'] = $code;
        self::$respone['message'] = $message;
        self::$respone['data'] = $data;

        return response()->json(self::$respone, self::$respone['code']);

    }

}