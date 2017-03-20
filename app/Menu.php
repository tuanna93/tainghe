<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $table = 'menus';

    protected $fillable = ['id','name','slug','icon','sort_order','parent_id','status'];

    public $timestamps = true;
}
