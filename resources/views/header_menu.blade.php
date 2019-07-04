<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
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
			
<div class="header-top">
	<div class="container">
		<div class="top-menu-inner">
			<ul> 	
				<li> <a href=""><i class="fa fa-envelope" aria-hidden="true"></i> 
					<?= setting('site.email');?>
			    	</a>
				</li>

				<li> <a href=""><i class="fa fa-volume-up" aria-hidden="true"></i> 
					<?= setting('site.sound');?>
			    	</a>
				</li>

				<li> <a href=""><i class="fa fa-eye" aria-hidden="true"></i> 
					<?= setting('site.eye');?>
			    	</a>
				</li>

				<li> <a href=""> 
				<img src="{{Voyager::image(setting('site.flag_img'))}}" alt="" class="flag">
					<?= setting('site.flag_text');?>
			    	</a>
				</li>

				<li> <a href=""> 
					<img src="{{Voyager::image(setting('site.gerb_img'))}}" alt="" class="flag">
					<?= setting('site.gerb_text');?>
			    	</a>
				</li>

				<li> <a href=""> 
					<i class="fa fa-music" aria-hidden="true"></i>
					<?= setting('site.gimn_text');?>
			    	</a>
				</li>
			</ul>   
		</div>
   <div class="language">
   	<ul> 
   		<li><a href="locale/uz">Ўз</a></li>
   		<li><a href="locale/ru">Ру</a></li>
   		<li><a href="locale/en">En</a></li>
   	</ul>
   </div>

   <div class="search">
   	<form action="#">
	<input type="text" placeholder="Поиск...">
	<button type="submit"><i class="fa fa-search"></i></button>   		
   	</form>
   </div>
	</div>
</div>

<div class="header-mid">
	<div class="container">
	<div class="logo">
		<a href="/">
		 <img src="{{Voyager::image(setting('site.logo'))}}" alt="" >
		 <h4>Экологическая партия Узбекистана</h4>
		</a>
	</div>

	<div class="header-address">
		<ul>
			<li><i class="fa fa-phone" aria-hidden="true"></i>
				<span class="add-text"><?= setting('site.hotline_t')?></span>
				<span><?= setting('site.hotline_p')?></span>
			</li>
			<li>
				<i class="fa fa-map-marker" aria-hidden="true"></i>
				<span class="add-text"><?= setting('site.address_t')?></span>
				 <span><?= setting('site.address_s')?></span>
			</li>
		</ul>
	</div>

	<div class="header-work-days">
		 <ul>
			<li>
				<i class="fa fa-clock-o" aria-hidden="true"></i>
				<span class="add-text"><?= setting('site.w-time')?></span>
				 <span><?= setting('site.w-time-t')?></span>
			</li>
		</ul>

	</div>

	<div class="virtual-reception" >
		<a href="/admin/news/create" class="hvr-grow-shadow">Виртуальная приёмная</a>
	</div>
	</div>
</div>

<div class="header">
	<div class="container">
	<?=menu('main_menu' , 'bootstrap');?>		
	</div>
</div>

