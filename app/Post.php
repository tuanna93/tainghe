<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'posts';

    protected $fillable = ['id','name','slug','image','intro','content','post_id','keywords','description','status'];

    public $timestamps = true;
}
