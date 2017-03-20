<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryPost extends Model
{
    protected $table = 'category_posts';

    protected $fillable = ['id','name','slug','icon','parent_id','keywords','description'];

    public $timestamps = true;
}
