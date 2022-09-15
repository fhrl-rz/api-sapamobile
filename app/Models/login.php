<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class login extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'nim',
        'email',
        'access_token',
        'refresh_token',
        'token_type',
        'password',
        'roles',
        
    ];

    protected $hidden = [
        'password',
        
    ];

}
