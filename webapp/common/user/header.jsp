<!-- Header -->
<header class="header-v3">
	<!-- Header desktop -->
	<div class="container-menu-desktop trans-03">
		<!-- Topbar -->
		<div class="top-bar" style="background-color: #333; color: #fff;">
			<div class="content-topbar flex-sb-m h-full container wrapper-topbar"
				style="font-size: 14px;">
				<div class="left-top-bar">Free shipping for standard order
					over $100</div>

				<div class="right-top-bar flex-w h-full">
					
					<c:if test="${ not empty USERMODEL }" >
						<a href="#"
							class="flex-c-m trans-04 p-lr-25" style="color: #fff;">
							Wellcome, ${ USERMODEL.fullName }
						</a> 
						
						<a href="<c:url value='/thoat?action=logout' />"
							class="flex-c-m trans-04 p-lr-25" style="color: #fff;"> Logout
						</a> 
					</c:if>
					
					<c:if test="${empty USERMODEL }" >
						<a href="<c:url value='/dang-nhap?action=login' />"
							class="flex-c-m trans-04 p-lr-25" style="color: #fff;"> Login
						</a> 
					</c:if>
					
					<a href="#" class="flex-c-m trans-04 p-lr-25" style="color: #fff;">
						Help & FAQs 
					</a> 
				</div>
			</div>
		</div>
		<div class="wrap-menu-desktop" style="
    top: 21px;
">
			<nav class="limiter-menu-desktop p-l-45">

				<!-- Logo desktop -->
				<a href="<c:url value='/trang-chu' />" class="logo"> <img
					src="<c:url value='/template/user/images/icons/logo-01.png' />"
					alt="IMG-LOGO">
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">
						<li><a href="<c:url value='/trang-chu' />">Home</a></li>

						<li><a href="<c:url value='/shop' />">Shop</a></li>



						<li><a href="<c:url value='/about' />">About</a></li>

						<li><a href="<c:url value='/contact' />">Contact</a></li>
					</ul>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m h-full">
					<div class="flex-c-m h-full p-r-25 bor6">
					
						<c:if test="${empty USERMODEL }" >
							<a href="<c:url value='/dang-nhap?action=login' />"
								class="flex-c-m trans-04 p-lr-25" style="color: #fff;">
								<div
									class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 <!-- icon-header-noti --> js-show-cart"
									data-notify="2">
									<i class="zmdi zmdi-shopping-cart"></i>
								</div>
							</a> 
						</c:if>
						
						<c:if test="${not empty USERMODEL }" >
								<div
									class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 <!-- icon-header-noti --> js-show-cart"
									data-notify="2">
									<i class="zmdi zmdi-shopping-cart"></i>
								</div>
						</c:if>
						
					
					</div>

					<div class="flex-c-m h-full p-lr-19">
						<div
							class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
							<i class="zmdi zmdi-menu"></i>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="index.html"><img
				src="<c:url value='/template/user/images/icons/logo-01.png' />"
				alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
			<div class="flex-c-m h-full p-r-5">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
					data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>
			</div>
		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="main-menu-m">
			<li><a href="#">Home</a> <span class="arrow-main-menu-m">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
			</span></li>

			<li><a href="#">Shop</a></li>



			<li><a href="#">About</a></li>

			<li><a href="#">Contact</a></li>
		</ul>
	</div>

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<button class="flex-c-m btn-hide-modal-search trans-04">
			<i class="zmdi zmdi-close"></i>
		</button>

		<form class="container-search-header">
			<div class="wrap-search-header">
				<input class="plh0" type="text" name="search"
					placeholder="Search...">

				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
			</div>
		</form>
	</div>
</header>

<aside class="wrap-sidebar js-sidebar">
	<div class="s-full js-hide-sidebar"></div>

	<div class="sidebar flex-col-l p-t-22 p-b-25">
		<div class="flex-r w-full p-b-30 p-r-27">
			<div
				class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-sidebar">
				<i class="zmdi zmdi-close"></i>
			</div>
		</div>

		<div class="sidebar-content flex-w w-full p-lr-65 js-pscroll">
			<ul class="sidebar-link w-full">
				<li class="p-b-13"><a href="home-03.html"
					class="stext-102 cl2 hov-cl1 trans-04"> Home </a></li>

				<li class="p-b-13"><a href="#"
					class="stext-102 cl2 hov-cl1 trans-04"> My Wishlist </a></li>

				<li class="p-b-13"><a href="#"
					class="stext-102 cl2 hov-cl1 trans-04"> My Account </a></li>

				<li class="p-b-13"><a href="#"
					class="stext-102 cl2 hov-cl1 trans-04"> Track Oder </a></li>

				<li class="p-b-13"><a href="#"
					class="stext-102 cl2 hov-cl1 trans-04"> Refunds </a></li>

				<li class="p-b-13"><a href="#"
					class="stext-102 cl2 hov-cl1 trans-04"> Help & FAQs </a></li>
			</ul>

			<div class="sidebar-gallery w-full p-tb-30">
				<span class="mtext-101 cl5"> @ TNstore </span>



				<div class="sidebar-gallery w-full">
					<span class="mtext-101 cl5"> About Us </span>


				</div>
			</div>
		</div>
</aside>

<!-- Cart -->
<div class="wrap-header-cart js-panel-cart">
	<div class="s-full js-hide-cart"></div>

	<div class="header-cart flex-col-l p-l-65 p-r-25">
		<div class="header-cart-title flex-w flex-sb-m p-b-8">
			<span class="mtext-103 cl2"> Your Cart </span>

			<div
				class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
				<i class="zmdi zmdi-close"></i>
			</div>
		</div>

		<div class="header-cart-content flex-w js-pscroll">
			<ul class="header-cart-wrapitem w-full">
				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img
							src="<c:url value='/template/user/images/item-cart-01.jpg' />"
							alt="IMG">
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							White Shirt Pleat </a> <span class="header-cart-item-info"> 1
							x $19.00 </span>
					</div>
				</li>

				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img
							src="<c:url value='/template/user/images/item-cart-02.jpg"' /> alt="IMG"'>
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							Converse All Star </a> <span class="header-cart-item-info"> 1
							x $39.00 </span>
					</div>
				</li>

				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img
							src="<c:url value='/template/user/images/item-cart-03.jpg"' /> alt="IMG">
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							Nixon Porter Leather </a> <span class="header-cart-item-info">
							1 x $17.00 </span>
					</div>
				</li>
			</ul>

			<div class="w-full">
				<div class="header-cart-total w-full p-tb-40">Total: $75.00</div>

				<div class="header-cart-buttons flex-w w-full">
					<a href="#"
						class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
						View Cart </a> <a href="#"
						class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
						Check Out </a>
				</div>
			</div>
		</div>
	</div>
</div>
