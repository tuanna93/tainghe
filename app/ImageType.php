<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ImageType extends Model
{
    protected $table = 'image_types';

    protected $fillbale = ['id','name'];

    public $timestamps = false;
}
