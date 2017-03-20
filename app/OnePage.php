<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OnePage extends Model
{
    protected $table = 'one_pages';

    protected $fillable = ['id','name','slug','content'];

    public $timestamps = true;
}
