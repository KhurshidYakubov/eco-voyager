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
          <div class="col-md-3">
          <div class="features-item hvr-bob">
            <img src="{{Voyager::image($item->img)}}" alt="">
            <h2>{{$item->title}}</h2>
          </div>
          </div>
        </a>
      @endforeach
  </div>
</div>


  <div class="container">
    <div class="news">
      <div class="news-header">
        <h1><span>@lang('home.news')</span></h1>
        <a href="" class="all_news"><span>@lang('home.all_news')</span></a>
      </div>
          <div class="owl-carousel">
              @foreach($news as $item) 
                <a href="">  
                  <div class="news-item">
                    <div>
                       <img src="{{Voyager::image($item->img)}}" alt="">
                         <div class="news-content">
                          <h5>{{$item->getTranslatedAttribute('title', \App::getLocale(), 'ru')}}</h5>
                          <p>{{$item->getTranslatedAttribute('body', \App::getLocale(), 'ru')}}</p>
                         </div>
                    </div>
                  </div>
                </a>
              @endforeach
          </div>
        </div>
  </div>


  <div class="container">
    <div class="links">
      <h1><span>Полезные ресурсы</span></h1>
   <div class="row">
    <div class="links-item">
      @foreach($links as $item)
      <a href="{{$item->link}}" target="_blank">
        <div class="col-md-4">
          <div class="links-inner">
          <img src="{{Voyager::image($item->img)}}" alt="">
          <h2>{{$item->title}}</h2>
        </div>  
        </div>
      @endforeach
      </a>
</div>
</div>
  </div>

  
  </div>

  </div>
</div>
@stop
