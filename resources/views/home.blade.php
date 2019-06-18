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



<div class="container">
  <div class="features">
    <h1><span>Направления деятельности партии</span></h1>
    @foreach($features as $item)
    <a href="">
    <div class="features-item hvr-bob">
    <img src="{{Voyager::image($item->img)}}" alt="">
    <h2>{{$item->title}}</h2>
    </div>
    </a>
    @endforeach
       </div>
  </div>
</div>
</div>
@stop
