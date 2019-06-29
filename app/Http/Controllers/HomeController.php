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
        $news = News::all();
        	$news->load('translations');

        $links = Link::all();
             
        return view('home', compact('features', 'news' , 'links'));
    }


    public function allNews(){

    	$allnews=News::all();
    	$allnews->load('translations');

    	return view('all_news' , compact('allnews'));
    }
}
