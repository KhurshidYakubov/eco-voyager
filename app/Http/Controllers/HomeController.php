<?php

namespace App\Http\Controllers;
use App\Feature;
use App\News;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function showAll()
    {
        $features = Feature::all();
        $news = News::all();
        return view('home', compact('features') , compact('news'));
    }
}
