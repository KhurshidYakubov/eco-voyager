

				@include('header_links')  
				 
				@include('header_menu')   

		  		@yield('content')	

		  		@include('footer')	

  			
  		
 		   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		   <script src="{{asset('js/bootstrap.min.js')}}"></script>
  		   <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  		   <script src="{{asset('js/jquery.min.js')}}"></script>
  		   <script src="{{asset('js/owl.carousel.min.js')}}"></script>
  		   	  <script>
			$('.owl-carousel').owlCarousel({
			        loop:true,
			        margin:15,
			        nav:true,
			        navText : ["<i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i>", "<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>"],
			        dots:false,
			        autoplay:true,
			        responsive:{
			            0:{
			                items:1
			            },
			            768:{
			                items:2
			            },
			            1024:{
			                items:3
			            },
			            1366:{
			                items:3
			            }
			        }
			    });
			  </script>
			  <script>
			    AOS.init();
			  </script>
</body>
</html>
