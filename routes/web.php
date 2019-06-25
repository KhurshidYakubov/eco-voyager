<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('home');
// });

Route::get('/', 'HomeController@showAll');


Route::get('/allnews' , function(){
	return view('all_news');
});


Route::get("locale/{locale}" , function($locale){
	Session::put('locale',$locale);
	
	return redirect()->back();
});
	


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
