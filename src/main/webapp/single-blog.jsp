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
										<li class="dropdown"><a href="#">NEW ADDED</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/m11.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#"> Beethoven And Mozart</a></h6>
													<p class="post-date">July 10, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/m2.jpe" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#"> Image Processing</a></h6>
													<p class="post-date">August 25, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/m3.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">  Matt Anderson Joins Modena</a></h6>
													<p class="post-date">September 5, 2015</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="#">ENGINEERING</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/1.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Software Engineering</a></h6>
													<p class="post-date">12.04.2019</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/2.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Object Oriented Programming</a></h6>
													<p class="post-date">August 25, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/3.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Microprocessors</a></h6>
													<p class="post-date">September 5, 2015</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="#">MEDICAL</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/4.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Anatomy</a></h6>
													<p class="post-date">July 10, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/5.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Medical Biochemistry</a></h6>
													<p class="post-date">August 25, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/6.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Cardiology</a></h6>
													<p class="post-date">September 5, 2015</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="#">LAW</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/7.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Constitutional Law</a></h6>
													<p class="post-date">July 10, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/8.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Civil Law</a></h6>
													<p class="post-date">August 25, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/9.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Obligations Law</a></h6>
													<p class="post-date">September 5, 2015</p>
												</div>
											</div>	
										</li>
										<li class="dropdown"><a href="#">Sport Scienes</a>
											<div class="mega-menu">
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/10.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Sports Management</a></h6>
													<p class="post-date">July 10, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/11.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Coaching Education</a></h6>
													<p class="post-date">August 25, 2015</p>
												</div>
												<div class="single-post">
													<div class="post-img">
														<a href="#"><img src="img/mega-menu/12.jpg" alt="" /></a>
													</div>
													<h6 class="post-title"><a href="#">Physical Education and Sports Teaching </a></h6>
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
		<div id="single-blog" class="single-blog-area">
			<div class="single-blog-heading">
				

			</div>
			<div class="container">
				<div class="row">
				<%if(admin!=null){%><div class="col-md-4"><% %><a href="ques"> <button class=" btn-primary btn-lg">Ask a Question ?</button></a></div><%} %>
					<div class="col-md-8 col-md-offset-2">
						<div class="single-blog-details">
							<h1 class="post-title">Is the custodial parent violating our agreement?</h1>
							<p class="post-date">Posted on July 10, 2015</p>
							<div class="post-long-desc">
								<p>The mother of my children and I have a Standard Possession Order in TX. It states, "both parties are enjoined from making any disparaging remark about the other parent...reasonably expected to diminish the love, respect, and affection the child feels for the disparaged party" and "each party shall encourage [the children] to have a positive relationship with the other party". Where my concern lies is how when speaking with the children she refers to me by my first name but she refers to her husband as "dad". My children call him dad and me by my first name, occasionally by dad. Is there something I can do? I feel my title is being taken from me. Is it reasonable for me to ask her to stop calling me by my first name when talking to the kids? For example, instead of saying "I need to talk with Clayton" or "How was your weekend at Clayton's?" say "I need to talk with your dad" and "How was your weekend with your dad?".</p>
							</div>
						
							<div class="about-author fix">
								<h6 class="title">about the author</h6>
								<div class="author-img">
									<img src="img/adam.jpg" alt="Author Image" />
								</div>
								<div class="author-info">
									<p> 5 years experience
										Criminal Law, Collections, Family Law...
										Texas, Western District of Texas (Federal)</p>
								</div>
							</div><!-- /.about-author -->
							<div class="comments-area">
								<h6 class="title">12 comments</h6>
								<ul class="comments-list">
									<li class="single-comment"id=element2>
										<div class="comment-box">
											<div class="comment-author">
												<img src="img/comments/yorumcu.jpg" alt="Comment Author" />
											</div>
											<div class="comment-info">
												<p class="author-name"><a href="#">Laurel Lance</a></p>
												<span class="comment-date">July 11, 2015</span>
												<p>Some probate courts have forms and code information online. I would look at some of the larger counties such as Montgomery or Mobile. On the POA, it all depends on the language in the document. Generally, the person that granted the POA is the one that files to have it revoked but in this situation that would be difficult. If affording an attorney is difficult, I recommend calling Legal Services Alabama at (866) 456-4995. You may qualify for legal assistance based on income.</p>
												<a href="#" class="reply-link" title="Reply">reply</a>
							<% Object ad=request.getAttribute("admin");if(ad!=null){ %>	<button class="btn btn-danger fa fa-close"  onclick="var element2 = document.getElementById('element2');element2.parentNode.removeChild(element2);"></button><%} %>
											
											</div>
											
										</div>
									</li><!-- /.single-comment -->
									<li class="single-comment" id=element1>
										<div class="comment-box">
											<div class="comment-author">
												<img src="img/comments/yorumcu1.jpg" alt="Comment Author" />
											</div>
											<div class="comment-info">
												<p class="author-name"><a href="#">Alex Reim</a></p>
												<span class="comment-date">July 11, 2015</span>
												<p>Some probate courts have forms and code information online. I would look at some of the larger counties such as Montgomery or Mobile. On the POA, it all depends on the language in the document. Generally, the person that granted the POA is the one that files to have it revoked but in this situation that would be difficult. If affording an attorney is difficult, I recommend calling Legal Services Alabama at (866) 456-4995. You may qualify for legal assistance based on income.</p>
												<a href="#" class="reply-link" title="Reply">reply</a>
							<% if(ad!=null){ %>	<button class="btn btn-danger fa fa-close"  onclick="var element = document.getElementById('element');element.parentNode.removeChild(element);"></button><%} %>
											</div>
											
											
										</div>
										<ul class="reply">
											<li class="single-comment" id=element>
												<div class="comment-box">
													<div class="comment-author">
														<img src="img/comments/yorumcu2.jpg" alt="Comment Author" />
													</div>
													<div class="comment-info">
														<p class="author-name"><a href="#">Wally West</a></p>
														<span class="comment-date">July 11, 2015</span>
														<p>Some probate courts have forms and code information online. I would look at some of the larger counties such as Montgomery or Mobile. On the POA, it all depends on the language in the document. Generally, the person that granted the POA is the one that files to have it revoked but in this situation that would be difficult. If affording an attorney is difficult, I recommend calling Legal Services Alabama at (866) 456-4995. You may qualify for legal assistance based on income.</p>
														<a href="#" class="reply-link" title="Reply">reply</a>
							<% if(ad!=null){ %>	<button class="btn btn-danger fa fa-close"  onclick="var element = document.getElementById('element');element.parentNode.removeChild(element);"></button><%} %>
													
													</div>
													
												</div>
											</li><!-- /.single-comment -->
										</ul><!-- /.reply -->
									</li><!-- /.single-comment -->
									 <c:forEach items="${comment}" var="user">
									
									<li class="single-comment">
										<div class="comment-box">
											<div class="comment-author">
												<img src="img/comments/yorumcu.jpg" alt="Comment Author" />
											</div>
											
											<div class="comment-info">
												<p class="author-name"><a href="#">${user.name}</a></p>
												<span class="comment-date">${time}</span>
												<p>${user.message}</p>
												<a href="#" class="reply-link" title="Reply" style="float:left;">reply</a>
											</div>
											 <%if(ad!=null){%> <a class="btn btn-danger fa fa-close" href="delete?id=${user.id}" role="button" style="float:right;"></a><%} %>
										</div>
									</li>
									</c:forEach>
								</ul>
							</div><!-- /.comments-area -->
							<div class="comment-form-area">
								<p>leave a comment</p>
								<% if(admin==null){%>
								<h3 style="color:red;">you need to sign in to comment ! </h3>
								<form action="comment" method="post" id="forma" >								
									<input type="text" placeholder="Name" name="name" disabled />
									<input type="text" placeholder="Email" name="email" disabled />
									<textarea placeholder="Message" name ="message" disabled ></textarea>
									<button type="submit" class="submit-btn" disabled >submit</button>
								</form>
								<%} %><% if(admin!=null){%>
									<form action="comment" method="post" id="forma" >								
									<input type="text" placeholder="Name" name="name" autocomplete="off"/>
									<input type="text" placeholder="Email" name="email" autocomplete="off"/>
									<textarea placeholder="Message" name ="message" autocomplete="off"></textarea>
									<button type="submit" class="submit-btn">submit</button>
								</form>
								<%} %>
							</div><!-- /.comment-form-area -->
						</div><!-- /.single-blog-details -->
					</div>
				</div>
			</div>
		</div>
		<!-- single-blog-area end -->
		
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
