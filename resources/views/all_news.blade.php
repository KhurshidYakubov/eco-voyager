
			  

				@include('header_menu')   
<div class="all-news">
    <div class="container">
	    <div class="row">
          @foreach($allnews as $item) 
       
	          	<div class="col-md-3">
		            <a href="{{ route('hcont.show', $item->id) }}">  
		              <div class="all-news-item">
		                   <img src="{{Voyager::image($item->img)}}" alt="">
		                     <div class="news-text">
		                      <h5>{{$item->getTranslatedAttribute('title', \App::getLocale(), 'ru')}}</h5>
		                      <p>{{$item->getTranslatedAttribute('body', \App::getLocale(), 'ru')}}</p>
		                     </div>
		              </div>
		            </a>
	            </div>

          @endforeach
	    </div>
    </div>
</div>

		  		@include('footer')	

  			
  		
