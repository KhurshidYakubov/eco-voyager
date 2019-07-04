<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Feature;
use App\News;
use App\Link;
use App\International;
use App\Partner;
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

        $internationals = International::all();
            $internationals->load('translations');

        $partners = Partner::all();
             
        return view('home', compact('features', 'news' , 'links' , 'internationals' , 'partners'));
    }


    public function allNews(){

    	
        $allnews = News::withTranslations()->paginate(2);
    

    	return view('all_news' , compact('allnews'));
    }

    public function show($id){
        $data = News::findOrFail($id);
            $data->load('translations');
         return view('the-news' , compact('data'));
    }
}
