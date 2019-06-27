<?php

namespace App\Http\Controllers;
use App\Request;
use Illuminate\Http\Request as BaseController;

class RequestsController extends Controller
{
     public function store(BaseController $request)
    {
      
    
        $form_data = array(
            'name'       =>   $request->name,
            'surname'        =>   $request->surname,
        
        );

        Request::create($form_data);

        return redirect('/join');
    }
}
