<?php

namespace App\Http\Controllers;

use App\Category;
use App\OnePage;
use App\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view('home');
    }
    public function trangchu(){
        $product = Product::select('*')->orderBy('id','DESC')->get();
        $category = Category::select('*')->where('parent_id',0)->get();
        return view('pages.index',compact('product','category'));
    }
    public function Page($page){
        $namepage = OnePage::where('slug','like','%'.$page.'%')->first();
        return view('pages.onepage',compact('namepage'));
    }
}
