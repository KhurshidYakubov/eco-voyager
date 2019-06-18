@extends('index')

@section('content')

<div class="content" >
   
   <div class="main-cover" style=" background-image: url('{{Voyager::image(setting('site.main_img'))}}');">

   <div class="main-inner">
    <img src="{{Voyager::image(setting('site.logo'))}}" alt="" >
    <h2><?= setting('site.slogan');?></h2>

    <a href="" class="hvr-pulse">Вступить в партию</a>
    </div>
   </div>


</div>
@stop
