<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html class="no-js" lang="">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<script src="./libs/jquery/1.10.1/jquery.min.js"></script>

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
    <body class="single-blog">
      

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
							</div>
							<div class="col-md-6 col-sm-6 col-xs-6">
								<div class="header-top-right fix">
									<div class="header-links">
										<ul>
										<% Object admin=request.getAttribute("loggedin");if(admin==null){ %>
											<li><a href="login.jsp">Login</a></li>
											<li><a href="register.jsp">Register</a></li>
											<%} %>
											<% if (admin!=null){ %>
											<li><a href="profile.html">Profile</a></li>
											<li><a href="index.html">Sign out</a></li>
											<%} %>
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
								<%if(admin==null){ %>
									<a href="index.html"><img src="img/logo/logoson.png" alt="Logo" /></a><%} %>
									<%if(admin!=null){ %>
									<a href="logined.jsp"><img src="img/logo/logoson.png" alt="Logo" /></a><%} %>
								</div>
							</div>
							<div class="col-md-9">
								<div class="main-menu">
									<nav>
									  <ul class="main-nav navbar-right">
										<li><%if(admin==null){ %><a href="index.html">Home</a><%} %>
										<%if(admin!=null){ %><a href="logined.jsp">Home</a><%} %></li>
										<li class="dropdown"><a href="single-blog">NEW ADDED</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/m11.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog"> Beethoven And Mozart</a></h6>
													<p class="post-date">July 10, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/m2.jpe" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog"> Image Processing</a></h6>
													<p class="post-date">August 25, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/m3.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">  Matt Anderson Joins Modena</a></h6>
													<p class="post-date">September 5, 2015</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="single-blog">ENGINEERING</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/1.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Software Engineering</a></h6>
													<p class="post-date">12.04.2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/2.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Object Oriented Programming</a></h6>
													<p class="post-date">August 25, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/3.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Microprocessors</a></h6>
													<p class="post-date">September 5, 2015</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="single-blog">MEDICAL</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/4.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Anatomy</a></h6>
													<p class="post-date">July 10, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/5.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Medical Biochemistry</a></h6>
													<p class="post-date">August 25, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/6.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Cardiology</a></h6>
													<p class="post-date">September 5, 2015</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="single-blog">LAW</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/7.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Constitutional Law</a></h6>
													<p class="post-date">July 10, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/8.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Civil Law</a></h6>
													<p class="post-date">August 25, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/9.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Obligations Law</a></h6>
													<p class="post-date">September 5, 2015</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="single-blog">Sport Scienes</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/10.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Sports Management</a></h6>
													<p class="post-date">July 10, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/11.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Coaching Education</a></h6>
													<p class="post-date">August 25, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="single-blog"><img src="img/mega-menu/12.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="single-blog">Physical Education and Sports Teaching </a></h6>
													<p class="post-date">September 5, 2015</p>
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
		
		<!-- single-blog-area start -->
<div class="container" width="60px;">
  <h2>Ask Your Question :)</h2>
  <p>explain the whole question or problem you have so others can help you </p>
  <form action="question" method="POST">
    <div class="form-group">
    <label>Upload Your Photo</label>
    <br>
<img src="img/download.jpeg" alt="Author Image" id="clicked" style="width:100px!important;height:100px!important;"/>
<input type="file" style="display:none;width:25px!important;height:25px!important;" id="open" onchange="readURL(this); "name="open">
<br>
      <label for="usr">Title of the question/subject</label>
      <input type="text" class="form-control" name="title" placeholder="Title of question">
      <label>The Authors Name</label>
      <input type="text" class="form-control" name="name" placeholder="Author Name" >
    </div>
    <div class="form-group">
  <label for="comment">Your Question:</label>
  <textarea class="form-control" rows="5" name="comment"placeholder="Question "></textarea>
</div>
<input type="submit" class="btn btn-primary">
  </form>
</div>
			<%if(admin==null){ %><h3 style="color:red;text-align:center;">you need to sign in to ask questions ! </h3><%} %>
			<%if(admin!=null){ %>
			<h2 style="text-align:center;">Asked questions</h2>
			<div class="container" style="">
				<div class="row">
				<div class="col-md-10 col-md-offset-2">
				<div class="comments-list">
				
				<c:forEach items="${Ques}" var="user">
							<div class="about-author fix">
								<h6 class="title" >${user.title}</h6>
								<div class="author-img ">
									<img src="img/${user.pic}" alt="Author Image" id="clicked" style="width:60px!important;height:60px!important;"/>
									<p>${user.aname }</p>
								</div>
								<div class="author-info">
									<p>${user.question}</p>
									
								</div>
								<p class="post-date">${time}</p>
								<!-- <a href="reply?id=${user.id}" class="reply-link" title="Reply">reply</a> -->
								<a href="#" class="reply-link" title="Reply">reply</a>
								<%Object ad=request.getAttribute("admin");if(ad!=null){%> <a class="btn btn-danger fa fa-close" href="delete1?id=${user.id}" role="button" style="float:right;"></a><%} %>
							</div>
							
							</c:forEach>
							</div>
							<%} %>
							</div>
							</div>
							</div>
							<script>
							document.getElementById("clicked").addEventListener("click",function(){
								document.getElementById("open").click();
							});
							
							function readURL(input) {
						        if (input.files && input.files[0]) {
						            var reader = new FileReader();

						            reader.onload = function (e) {
						                $('#clicked')
						                    .attr('src', e.target.result)
						                    .width(100)
						                    .height(100);
						                
						            };

						            reader.readAsDataURL(input.files[0]);
						        }
						    }
							

							</script>
							
							
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