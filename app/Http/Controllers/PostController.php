<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){
        $post = Post::select('*')->get();
        return view('pages.posts.index',compact('post'));
    }
    public function post($pos){
        $post = Post::select('*')->where('slug','like','%'.$pos.'%')->first();
        return view('pages.posts.detail',compact('post'));
    }
}
