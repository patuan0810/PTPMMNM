
<header id="header"><!--header-->
			<div class="header_top"><!--header_top-->
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<div class="contactinfo">
								<ul class="nav nav-pills">
									<li><a href="#"><i class="fa fa-phone"></i> +84 914046121</a></li>
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
								<a href="index.html"><img src="{{('public/frontend/images/logo.png')}}" alt="" /></a>
							</div>
							<div class="btn-group pull-right">
								<div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
										TP.HCM
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">Hà Nội</a></li>
										<li><a href="#">Đà Nẵng</a></li>
									</ul>
								</div>
								
								<div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
										VNĐ
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">Dollar</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-8">
							<div class="shop-menu pull-right">
								<ul class="nav navbar-nav">
									<li><a href="#"><i class="fa fa-user"></i> Account</a></li>
									<li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
									<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
									<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
									<li><a href="login.html"><i class="fa fa-lock"></i> Login</a></li>
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
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>
							<div class="mainmenu pull-left">
								<ul class="nav navbar-nav collapse navbar-collapse">
									<li><a href="{{URL::to('/trang-chu')}}" class="active">Trang chủ</a></li>
									<li class="dropdown"><a href="#">Sản phẩm<i class="fa fa-angle-down"></i></a>
										<ul role="menu" class="sub-menu">
											<li><a href="shop.html">Products</a></li>

										</ul>
									</li> 
									<li class="dropdown"><a href="#">Tin tức<i class="fa fa-angle-down"></i></a>
										
									</li> 
									<li><a href="404.html">Giỏ hàng</a></li>
									<li><a href="contact-us.html">Liên hệ</a></li>
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
