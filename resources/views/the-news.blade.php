  
				@include('header_menu')   

           <img src="{{Voyager::image($data->img)}}" alt="">
		  <h3>{!!$data->getTranslatedAttribute('title', \App::getLocale(), 'ru')!!}</h3>
		  <p>{!!$data->getTranslatedAttribute('body', \App::getLocale(), 'ru')!!}</p>

          <span>{{ $data->created_at->format('d.m.Y') }}</span>

          

		  		@include('footer')	
