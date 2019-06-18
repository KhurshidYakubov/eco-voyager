
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
   		<li><a href="">Ўз</a></li>
   		<li><a href="">Ру</a></li>
   		<li><a href="">En</a></li>
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
		<a href="" class="hvr-grow-shadow">Виртуальная приёмная</a>
	</div>
	</div>
</div>

<div class="header">
	<div class="container">
	<?=menu('main_menu' , 'bootstrap');?>		
	</div>
</div>

