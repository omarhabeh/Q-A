<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html class="no-js" lang="">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Questions&Answers</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- favicon
		============================================ -->		
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
		
		<!-- Google Fonts
		============================================ -->		
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
	   
		<!-- Bootstrap CSS
		============================================ -->		
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- font-awesome CSS
		============================================ -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- owl.carousel CSS
		============================================ -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
		<!-- meanmenu CSS
		============================================ -->
        <link rel="stylesheet" href="css/meanmenu.css">
		<!-- normalize CSS
		============================================ -->
        <link rel="stylesheet" href="css/normalize.css">
		<!-- main CSS
		============================================ -->
        <link rel="stylesheet" href="css/main.css">
		<!-- style CSS
		============================================ -->
        <link rel="stylesheet" href="style.css">
		<!-- responsive CSS
		============================================ -->
        <link rel="stylesheet" href="css/responsive.css">
		<!-- modernizr JS
		============================================ -->		
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body class="home-2">
       

        <!-- header-area start -->
		<header id="header" class="header-area">
			<div class="header-top">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-6">
							<div class="header-top-left">
								<ul class="social-icons">
									<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
									<li><a href="https://twitter.com/?lang=tr"><i class="fa fa-twitter"></i></a></li>
									<li><a href="https://accounts.google.com"><i class="fa fa-google-plus"></i></a></li>
								
								</ul>
								
							</div>
							<%Object ad=request.getAttribute("admin");if(ad!=null) {%>
								<p style="color:red;font-size:14!important;">Hello admin</p>
								<%} %>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
							<div class="header-top-right fix">
								<div class="header-links">
								
									<ul>
										<li><a href="profile.html">Profile</a></li>
										<li><a href="index.html">Sign out</a></li>
									</ul>
								</div>
								<div class="header-search">
									<form action="#" method="post">
										<button type="button" class="search-toggler"><i class="fa fa-search"></i></button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div><!-- /.header-top -->
			<div class="header-bottom">
					<div class="container">
						<div class="row">
							<div class="col-md-3">
								<div class="logo">
									<a href="index.jsp"><img src="img/logo/logoson.png" alt="Logo" /></a>
								</div>
							</div>
							<div class="col-md-9">
								<div class="main-menu">
									<nav>
									  <ul class="main-nav navbar-right">
										<li><a href="#">Home</a></li>
										<li class="dropdown"><a href="#">NEW ADDED</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/m11.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Beethoven and Mozart</a></h6>
													<p class="post-date">July 10, 2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/m2.jpe" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Image Processing</a></h6>
													<p class="post-date">August 25, 2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/m3.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Matt Anderson Joins Modena</a></h6>
													<p class="post-date">September 5, 2019</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="#">ENGINEERING</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/1.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Software Engineering</a></h6>
													<p class="post-date">12.04.2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/2.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Object Oriented Programming</a></h6>
													<p class="post-date">August 25, 2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/3.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Microprocessors</a></h6>
													<p class="post-date">September 5, 2019</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="#">MEDICAL</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/4.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Anatomy</a></h6>
													<p class="post-date">July 10, 2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/5.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Medical Biochemistry</a></h6>
													<p class="post-date">August 25, 2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/6.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Cardiology</a></h6>
													<p class="post-date">September 5, 2019</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="#">LAW</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/7.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Constitutional Law</a></h6>
													<p class="post-date">July 10, 2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/8.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Civil Law</a></h6>
													<p class="post-date">August 25, 2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/9.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Obligations Law</a></h6>
													<p class="post-date">September 5, 2019</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="#">Sport Scienes</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/10.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Sports Management</a></h6>
													<p class="post-date">July 10, 2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/11.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Coaching Education</a></h6>
													<p class="post-date">August 25, 2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="logged"><img src="img/mega-menu/12.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Physical Education and Sports Teaching </a></h6>
													<p class="post-date">September 5, 2019</p>
												</div>
											</div>	
										</li>
										
									  </ul>
									</nav>
								</div><!-- /.main-menu -->
							</div>
						</div>
					</div>
					
				</div><!-- /.header-bottom -->
			</header>
			<!-- header-area end -->
			
			<!-- search-area start -->
			<div class="search-area">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="search-form">
								<span class="search-close"></span>
								<form action="#" method="post">
									<input type="text" placeholder="Search here..."/>
									<button type="submit" class="search-btn"><i class="fa fa-search"></i></button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- search-area end -->
			
			<!-- slider-area start -->
			<div id="slider" class="slider-area">
				<div id="top-carousel" class="slider-wrap">
					<div class="single-slide">
						<a href="#"><img src="img/a.jpg" alt="Slide Image" /></a>
						<div class="slide-text-container text-center">
							<h5><a href="#"> 
								Discover New Spaces</a></h5>
						</div>
					</div><!-- /.single-slide -->
					<div class="single-slide">
						<a href="logged"><img src="img/b.jpg" alt="Slide Image" /></a>
						<div class="slide-text-container text-center">
							<h5><a href="logged"> Discover New Spaces</a></h5>
						</div>
					</div><!-- /.single-slide -->
					<div class="single-slide">
						<a href="logged"><img src="img/c.jpg" alt="Slide Image" /></a>
						<div class="slide-text-container text-center">
							<h5><a href="logged"> Discover New Spaces</a></h5>
						</div>
					</div><!-- /.single-slide -->
					<div class="single-slide">
						<a href="logged"><img src="img/9.jpg" alt="Slide Image" /></a>
						<div class="slide-text-container text-center">
							<h5><a href="logged"> Discover New Spaces</a></h5>
						</div>
					</div><!-- /.single-slide -->
					<div class="single-slide">
						<a href="logged"><img src="img/12.jpg" alt="Slide Image" /></a>
						<div class="slide-text-container text-center">
							<h5><a href="logged"> Discover New Spaces</a></h5>
						</div>
					</div><!-- /.single-slide -->
					<div class="single-slide">
						<a href="logged"><img src="img/4.jpg" alt="Slide Image" /></a>
						<div class="slide-text-container text-center">
							<h5><a href="logged"> Discover New Spaces</a></h5>
						</div>
					</div><!-- /.single-slide -->
			
				</div><!-- /#top-carousel -->
			</div>
			<!-- slider-area end -->
			
			<!-- main-content-area start -->
			<div id="main-content" class="main-content-area">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="popular-posts-area">
								<h2 class="section-title">popular posts</h2>
								<div class="row">
									<div class="col-md-6 col-sm-6">
										<div class="single-popular-post">
											<div class="post-img">
												<a href="#"><img src="img/e.jpg" alt="Popular Post" /></a>
												<a href="#" class="post-tag">technology</a>
												<div class="post-info">
													<p>
														<span class="post-date"><a href="#">April 10, 2019</a></span>
														<span class="post-comments"><a href="#">3 comments</a></span>
														<span class="post-social-links">
															<a href="#" data-toggle="tooltip" data-placement="bottom" title="Likes"><i class="fa fa-heart"></i></a>
														</span>
													</p>
												</div>
											</div>
											<div class="post-content">
												<h6 class="post-title"><a href="#">Do computers really need to be any faster at this point?</a></h6>
												<p class="post-short-desc">Not only they do, they actually always will!
	
													ThatÃ¢ÂÂs because there are combinatorial optimization problems to solve, 
													of great practical importance Ã¢ÂÂ with literally never-ending need for more computing power to solve them as well 
													(in terms of solution quality) and as quickly as possible....</p>
												<a href="#" class="continue-link">Continue Reading...</a>
											</div>
										</div><!-- /.single-popular-post -->
									</div>
									<div class="col-md-6 col-sm-6">
										<div class="single-popular-post">
											<div class="post-img">
												<a href="#"><img src="img/d.jpg" alt="Popular Post" /></a>
												<a href="#" class="post-tag">scienes</a>
												<div class="post-info">
													<p>
														<span class="post-date"><a href="#">April 2, 2019</a></span>
														<span class="post-comments"><a href="#">6 comments</a></span>
														<span class="post-social-links">
															<a href="#" data-toggle="tooltip" data-placement="bottom" title="Likes"><i class="fa fa-heart"></i></a>
														</span>
													</p>
												</div>
											</div>
											<div class="post-content">
												<h6 class="post-title"><a href="#">Does a new genetic analysis finally reveal the identity of Jack the Ripper?</a></h6>
												<p class="post-short-desc">The tests compared fragments of mitochondrial DNAÃ¢ÂÂthe portion of DNA 
												inherited only from oneÃ¢ÂÂs motherÃ¢ÂÂretrieved from the shawl with samples taken from living descendants of Eddowes and Kosminski. 
												The DNA matches that of a living relative of Kosminki, they conclude in the Journal of Forensic Sciences....</p>
												<a href="#" class="continue-link">Continue Reading...</a>
											</div>
										</div><!-- /.single-popular-post -->
									</div>
									<div class="col-md-6 col-sm-6">
										<div class="single-popular-post">
											<div class="post-img">
												<a href="#"><img src="img/f.jpg" alt="Popular Post" /></a>
												<a href="#" class="post-tag">law</a>
												<div class="post-info">
													<p>
														<span class="post-date"><a href="#">March 21, 2019</a></span>
														<span class="post-comments"><a href="#">3 comments</a></span>
														<span class="post-social-links">
															<a href="#" data-toggle="tooltip" data-placement="bottom" title="Likes"><i class="fa fa-heart"></i></a>
														</span>
													</p>
												</div>
											</div>
											<div class="post-content">
												<h6 class="post-title"><a href="#">What Are the Different Tools Criminal Defense Lawyers have Available to Help their Clients?</a></h6>
												<p class="post-short-desc">A few examples of what a defense attorney can do are exclude evidence.
												 Suppose the police rummage through your home without a warrant to find illegal material (i.e. drugs)
												 and then the Police charge you with drug possession. However, your criminal defense attorney can argue that 
												 the search of your property was unlawful and the evidence can be excluded...</p>
												<a href="#" class="continue-link">Continue Reading...</a>
											</div>
										</div><!-- /.single-popular-post -->
									</div>
									<div class="col-md-6 col-sm-6">
										<div class="single-popular-post">
											<div class="post-img">
												<a href="#"><img src="img/g.jpg" alt="Popular Post" /></a>
												<a href="#" class="post-tag">Sports</a>
												<div class="post-info">
													<p>
														<span class="post-date"><a href="#">March 12, 2019</a></span>
														<span class="post-comments"><a href="#">4 comments</a></span>
														<span class="post-social-links">
															<a href="#" data-toggle="tooltip" data-placement="bottom" title="Likes"><i class="fa fa-heart"></i></a>
														</span>
													</p>
												</div>
											</div>
											<div class="post-content">
												<h6 class="post-title"><a href="#"> Beach volleyball is similar to traditional volleyball, the sport it was derived from. What are the basic conditions of beach volleyball?</a></h6>
												<p class="post-short-desc">Beach volleyball is played by 2 players on a sand court. 
												Players still have three shots to hit the ball over the net to ground the ball in the opponents' court. 
												Having only two people instead of six, as in a regular volleyball side increased athleticism required..
												A player that returns the service has to get into a favourable position so that the second person can set the ball into a good position 
												for the first player to spike the ball over the net to make it difficult for the opposi...</p>
												<a href="#" class="continue-link">Continue Reading...</a>
											</div>
										</div><!-- /.single-popular-post -->
									</div>
								</div>
							</div><!-- /.popular-posts-area -->
							
							
						
																
									
								
								
							</div><!-- /.sidebar-area -->
						</div>
					</div>
				</div>
			</div>
			<!-- main-content-area end -->
			
			<!-- footer-area start -->
			<footer id="footer" class="footer-area text-center">
				<div class="footer-logo">
					<a href="#"><img src="img/logo/logoson.png" alt="Footer Logo" /></a>
				</div>
				
			</footer>
			<!-- footer-area end -->
			
			<!-- jquery
			============================================ -->		
			<script src="js/vendor/jquery-1.11.3.min.js"></script>
			<!-- bootstrap JS
			============================================ -->		
			<script src="js/bootstrap.min.js"></script>		
			<!-- meanmenu JS
			============================================ -->		
			<script src="js/jquery.meanmenu.js"></script>
			<!-- owl.carousel JS
			============================================ -->		
			<script src="js/owl.carousel.min.js"></script>
			<!-- scrollUp JS
			============================================ -->		
			<script src="js/jquery.scrollUp.min.js"></script>
			<!-- plugins JS
			============================================ -->		
			<script src="js/plugins.js"></script>
			<!-- main JS
			============================================ -->		
			<script src="js/main.js"></script>
		</body>
	
	
</html>
