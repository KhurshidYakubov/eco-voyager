@extends('index')

@section('content')

<div class="content" >
   
   <div class="main-cover">
<div class="container">
   <div class="main-inner">
    <div class="col-md-4">
    <img src="{{Voyager::image(setting('site.hand'))}}" alt="" >
</div>

<div class="col-md-8">
    <h2><?= setting('site.slogan');?></h2>
    <a href="/join" class="hvr-pulse">@lang('home.join_party')</a>
  </div>
    </div>
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
        <a href="/allnews" class="all_news">@lang('home.all_news')</a>
      </div>
          <div class="owl-carousel">
              @foreach($news as $item) 
                <a href="{{ route('hcont.show', $item->id) }}">  
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
