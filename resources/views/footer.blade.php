

<div class="footer">
<div class="container">
<div class="col-md-4">
<img src="{{Voyager::image(setting('site.logo'))}}" alt="">
	<h2><?=setting('site.title')?></h2>
</div>

<div class="col-md-4">
	<ul>
		<li><a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
		<li><a href=""><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
		<li><a href=""><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
		<li><a href=""><i class="fa fa-telegram" aria-hidden="true"></i></a></li>
	</ul>
	<h4>&copy; 2019 Экологическая партия Узбекистана</h4>
</div>
	
<div class="col-md-4">
	<p>
		<?= setting('site.copy_desc')?>
	</p>
</div>
<hr>


</div>

<div class="developer">
	<a href="http://t.me/KhurshidYakubov">Связатся с разработчиком</a>
	<!-- <h5><?=\App::getLocale();?></h5> -->
</div>
</div>

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