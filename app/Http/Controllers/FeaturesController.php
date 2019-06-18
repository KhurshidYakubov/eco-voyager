<?php

namespace App\Http\Controllers;
use App\Feature;
use Illuminate\Http\Request;

class FeaturesController extends Controller
{
    public function showAll()
    {
        $features = Feature::all();
        return view('home', compact('features'));
    }
}
