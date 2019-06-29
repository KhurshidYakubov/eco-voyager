
				@include('header_links')   

				@include('header_menu')   
<div class="all-news">
    <div class="container">
	    <div class="row">
          @foreach($allnews as $item) 
       
	          	<div class="col-md-3">
		            <a href="">  
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

  			
  		
 		   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		   <script src="{{asset('js/bootstrap.min.js')}}"></script>
  		   <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  		   <script src="{{asset('js/jquery.min.js')}}"></script>
			  <script>
			    AOS.init();
			  </script>
		



</body>
</html>