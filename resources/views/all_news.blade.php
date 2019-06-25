<!DOCTYPE html>
<html lang="en">
<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title</title>
		<link rel="stylesheet" href="{{asset('css/style.css')}}">
		<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
		<link rel="stylesheet" href="{{asset('css/hover-min.css')}}">
		<link rel="stylesheet" href="{{asset('css/hover.css')}}">
		<link rel="stylesheet" href="{{asset('css/font-awesome.css')}}">
		<link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
		<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
		<link rel="stylesheet" href="{{asset('css/owl.carousel.min.css')}}">
		<link rel="stylesheet" href="{{asset('css/owl.theme.default.min.css')}}">

</head>
<body>
		

			<style>
				
				  @font-face {
				      font-family: "effra";
				      src: url('{{asset('fonts/Effra/effra.ttf')}}') format("truetype");
				      font-style: normal;
				      font-weight: normal;
				  }

				   @font-face {
				      font-family: "effra_medium";
				      src: url('{{asset('fonts/Effra/medium.ttf')}}') format("truetype");
				      font-style: normal;
				      font-weight: normal;
				  }


				   @font-face {
				      font-family: "fontawesome1";
				      src: url('{{asset('fonts/fontawesome-webfont.woff')}}') format("woff");
				      font-style: normal;
				      font-weight: normal;
				  }

				   @font-face {
				      font-family: "fontawesome2";
				      src: url('{{asset('fonts/fontawesome-webfont.woff2')}}') format("woff2");
				      font-style: normal;
				      font-weight: normal;
				  }




			</style>

				@include('header_menu')   

		  	

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