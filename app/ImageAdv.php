<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ImageAdv extends Model
{
    protected $table = 'image_advs';

    protected $fillable = ['id','image','slug','position','content','status'];

    public $timestamps = true;
}
