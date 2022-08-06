<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Berita extends Model {

    use HasFactory;

    protected $table = 't_berita';
    protected $fiilable  = ['judul','judul_seo','isi_berita','panel','hari', 'jam','gambar'];
}