<!DOCTYPE html>
<html lang="en">
<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title</title>
		<link rel="stylesheet" href="{{asset('css/style.css')}}">
		<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
		<link rel="stylesheet" href="{{asset('css/hover-min.css')}}">
		<link rel="stylesheet" href="{{asset('css/hover.css')}}">
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


			</style>

				@include('header_menu')   

		  		@yield('content')		

  			
  		
 		   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		   <script src="{{asset('js/bootstrap.min.js')}}"></script>

</body>
</html>
