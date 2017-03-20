<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categories';

    protected $fillable = ['id','name','slug','order','icon','parent_id','keywords','description'];

    public $timestamps = true;
}
