<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';

    protected $fillable = ['id','name','slug','price_new','price_old','intro','content','image','keywords','description','status_sale','status'];

    public $timestamps = true;

}
