@extends('master')
@section('keywords',isset($keywords) ? $keywords : page_get_option('keywords'))
@section('description',isset($description) ? $description : page_get_option('description'))
@section('title',isset($title) ? $title : page_get_option('title'))
@section('content')

    @include('widgets.main.pages.search')

@endsection