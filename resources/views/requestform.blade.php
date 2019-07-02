

				@include('header_menu')   

		  	    <form method="post" action="{{ route('rcont.store') }}" enctype="multipart/form-data">

					@csrf
					<div class="form-group">
						<label class="col-md-4 text-right">@lang('home.name')</label>
						<div class="col-md-8">
							<input type="text" name="name" class="form-control input-lg" />
						</div>
					</div>
					<br />
					<br />
					<br />
					<div class="form-group">
						<label class="col-md-4 text-right">Фамилия</label>
						<div class="col-md-8">
							<input type="text" name="surname" class="form-control input-lg" />
						</div>
					</div>
					<br />
			
				  <br>	
					<div class="form-group text-center">
						<input type="submit" name="add" class="btn btn-primary input-lg" value="Отправить" />
					</div>

				</form>

		  		@include('footer')	

