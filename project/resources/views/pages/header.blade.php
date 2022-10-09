<header id="header"><!--header-->
			<div class="header_top"><!--header_top-->
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<div class="contactinfo">
								<ul class="nav nav-pills">
									<li><a href="#"><i class="fa fa-phone"></i> +84 914 046 121</a></li>
									<li><a href="#"><i class="fa fa-envelope"></i> DTTK@gmail.com</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="social-icons pull-right">
								<ul class="nav navbar-nav">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div><!--/header_top-->
			
			<div class="header-middle"><!--header-middle-->
				<div class="container">
					<div class="row">
						<div class="col-sm-4">
							<div class="logo pull-left">
								<a href="{{URL::to('/trang-chu')}}"><img src="{{('frontend/images/logo.png')}}" alt="" /></a>
							</div>
						</div>
						<div class="col-sm-8">
							<div class="shop-menu pull-right">
								<ul class="nav navbar-nav">
									<li><a href="#"><i class="fa fa-user"></i> Tài Khoản</a></li>
									<li><a href="#"><i class="fa fa-star"></i> Yêu Thích</a></li>
									<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Thanh Toán</a></li>
									<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Giỏ Hàng</a></li>
									<li><a href="login.html"><i class="fa fa-lock"></i> Đăng Nhập</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div><!--/header-middle-->
		
			<div class="header-bottom"><!--header-bottom-->
				<div class="container">
					<div class="row">
						<div class="col-sm-9">
							<div class="mainmenu pull-left">
								<ul class="nav navbar-nav collapse navbar-collapse">
									<li><a href="{{URL::to('/trang-chu')}}" class="active">Trang chủ</a></li>
									<li class="dropdown"><a href="{{URL::to('/san-pham')}}">Sản phẩm</a>
									</li> 
									<li class="dropdown"><a href="{{URL::to('/gioi-thieu')}}">Giới Thiệu</a>
									</li> 
									<li><a href="{{URL::to('/lien-he')}}">Liên hệ</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="search_box pull-right">
								<input type="text" placeholder="Search"/>
							</div>
						</div>
					</div>
				</div>
			</div><!--/header-bottom-->
	</header><!--/header-->