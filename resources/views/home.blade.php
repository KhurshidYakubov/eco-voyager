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
                          <h5>{!!$item->getTranslatedAttribute('title', \App::getLocale(), 'ru')!!}</h5>
                          <p>{!!str_limit($item->getTranslatedAttribute('body', \App::getLocale(), 'ru') , 70)!!}</p>
                         </div>
                    </div>
                  </div>
                </a>
              @endforeach
          </div>
        </div>
  </div>


  <div class="container">
    <div class="news">
      <div class="news-header">
        <h1><span>@lang('home.international_news')</span></h1>
        <a href="/allnews" class="in_all_news">@lang('home.all_news')</a>
      </div>
          <div class="owl-carousel">
              @foreach($internationals as $item) 
                <a href="">  
                  <div class="news-item">
                    <div>
                       <img src="{{Voyager::image($item->img)}}" alt="">
                         <div class="news-content">
                          <h5>{!!$item->getTranslatedAttribute('title', \App::getLocale(), 'ru')!!}</h5>
                          <p>{!!str_limit($item->getTranslatedAttribute('body', \App::getLocale(), 'ru') , 70)!!}</p>
                         </div>
                    </div>
                  </div>
                </a>
              @endforeach
          </div>
        </div>
  </div>



  <div class="container">
    <div class="gallery">
       <div class="gallery-header">
         <h1><span>@lang('home.gallery')</span></h1>
       </div>

       <div class="gallery-items">
        <a href="/photos"> 
         <div class="col-md-6">
           <div class="g-item">
          <img src="{{Voyager::image(setting('site.photos'))}}" alt=""><span>Фотогалерея</span>
        </div>
        </div>
        </a>
         <a href="/photos"> 
         <div class="col-md-6"> 
          <div class="g-item">
          <img src="{{Voyager::image(setting('site.video'))}}" alt=""><span>Видеогалерея</span>
          </div>
        </div>
        </a>
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
                            </a>
                          @endforeach  
                      </div>
                  </div>
            </div>
        </div>


          <div class="container">
    <div class="partners">
       <div class="partners-header">
         <h1><span>Наши партнёры</span></h1>
        </div>

      @foreach($partners as $item)
        <div class="col-md-2" data-aos="zoom-in">
          <a href="{{$item->link}}" target="_blink">
            <div class="partner">
              <img src="{{Voyager::image($item->img)}}" alt="">
            </div>
          </a>
        </div>
        @endforeach

    
    </div>
  </div>

  </div>

@stop
