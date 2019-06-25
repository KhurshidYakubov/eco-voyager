<?php

namespace App\Http\Controllers;
use App\Feature;
use App\News;
use App\Link;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function showAll()
    {
        $features = Feature::all();
           $features->load('translations');
// $features=Feature::withTranslation(\App::getLocale())->first(); 
        $news = News::all();
        	$news->load('translations');

        $links = Link::all();
             
        return view('home', compact('features', 'news' , 'links'));
    }
}
