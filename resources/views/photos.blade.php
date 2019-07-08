
				@include('header_menu')   


@foreach($photos as $item)
   @php $images = json_decode($item->img); @endphp
    @foreach($images as $image)
      <a href="{{ Voyager::image($item->getThumbnail($image, 'medium')) }}" data-fancybox="gallery" data-caption="{{$item->title}}">
	 <img src="{{ Voyager::image($item->getThumbnail($image, 'small')) }}" />
</a>

    @endforeach
@endforeach


		  		@include('footer')	

