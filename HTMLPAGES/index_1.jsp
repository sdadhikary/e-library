<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="StyleSheet" type="text/css" href="login.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>E-Library</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Beauty Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
            addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() 
			{
            window.scrollTo(0, 1);
            }
			function a()
			{
			document.getElementById("form1").submit();
			}
			function myFunction() 
			{
			document.getElementById("myDropdown").classList.toggle("show");
			}
        </script>

        <link rel="stylesheet" type="text/css" href="../css/slicebox.css" />
        <!-- for banner-->
        <!-- font-awesome-icons -->
        <link href="../css/font-awesome.css" rel="stylesheet">
        <!-- //font-awesome-icons -->
        <!-- //custom-theme files-->
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //custom-theme files-->
        <!-- fonts -->
        <link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i&amp;subset=latin-ext,vietnamese"
              rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
              rel="stylesheet">
        <!-- //fonts -->

		
		
		
		
		
    </head>

    <body>
        <!-- banner -->
        <div class="banner-w3l" id="home">
            <div class="header-main-agile">
                <!-- navigation -->
                <div class="nav-links" style="height:80px">
                    <div class="container">
                        <nav class="navbar navbar-inverse">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="index_1.jsp">
                                    <h1>
										<span>E</span>-
                                        <span>Lib</span>rary
                                    </h1>
                                </a>
                            </div>
                            <div class="collapse navbar-collapse" id="myNavbar">
                                <ul class="nav navbar-nav link-effect">
									<li class="pull-right" style="margin-top:-65px;">
									<div id="log1">
										<a herf="#" onclick="myFunction()" class="dropbtn btn btn-block" style="padding:15px 0px;" ><span class="fa fa-user" aria-hidden="true" style="border:3px solid white; border-radius:50%;  padding: 15px"></span></a>
									</div>
										<div class="dropdown pull-right row">	
												<div id="myDropdown" class="dropdown-content" style="background-color:#229dff;font-family:Monospace">
													<form action="login.jsp" method="post" name="login">
														<div class="row" style="font-family:Monospace">
															<div class="row-xs-2"><p><span style="color:black">Username</span><input type="text" style="margin-left:5px" required value="GR_NO" name="userName" onFocus="if(this.value=='GR_NO'){this.value=''}" onBlur="if(this.value==''){this.value='GR_NO'}"></p>
															</div>
														</div>
														<div class="row">
														<div class="row-xs-2" style="margin-top:10px;"><p><span style="color:black;margin-left:5px;">Password</span><input type="password" style="margin-left:5px" value="PASSWORD" name="password" onFocus="if(this.value=='PASSWORD'){this.value=''}" onBlur="if(this.value==''){this.value='PASSWORD'}" required></p>
														</div>
														</div>
														<p><button type="submit" class="btn btn-block text-primary logbut" style="margin-top:10px;vertical-align:middle"><i class="fa fa-paper-plane"></i><span>Login</span></button></p>
														<!--input type="submit" value="Login"-->
													</form>
    
												</div>
											</div>
									</li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <!-- /navigation -->
            </div>
            <div class="wrapper bg-img" style="">
                <!-- //grids -->
				<!-- services -->
				<div class="clearfix"></div>
				<div class="services-agile-w3l col-md-offset-3 col-sm-offset-3 col-lg-offset-3" id="services" style="padding-top:110px;">
					<div class="services-agile-w3l-right-grids">
						<div class="col-xs-4 services-agile-w3l-right-grid grid-1">
							<div class="services-agile-w3l-icon">
								<span class="fa fa-info-circle" aria-hidden="true"></span>
							</div>
							<div class="services-agile-w3l-icon-info">
								<a href="aboutus.jsp"><h5>About Us</h5></a>
							</div>
						</div>
						<div class="col-xs-4 services-agile-w3l-right-grid grid-2">
							<div class="services-agile-w3l-icon">
								<span class="fa fa-user-plus" aria-hidden="true"></span>
							</div>
							<div class="log services-agile-w3l-icon-info">
								<a href="reg3.jsp"><h5>Registration</h5></a>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="services-agile-w3l-right-grids">
						<div class="col-xs-4 services-agile-w3l-right-grid grid-4">
							<div class="services-agile-w3l-icon">
								<span class="fa fa-question-circle" aria-hidden="true"></span>
							</div>
							<div class="services-agile-w3l-icon-info">
								<a href="Help.txt"><h5>Help</h5></a>
							</div>
						</div>
						<div class="col-xs-4 services-agile-w3l-right-grid grid-5">
							<div class="services-agile-w3l-icon">
								<span class="fa fa-bank" aria-hidden="true"></span>
							</div>
							<div class="services-agile-w3l-icon-info">
								<a href="aboutus.jsp"><h5>Contact Us</h5></a>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<!-- //services -->
            </div>
            <!-- /wrapper -->
        </div>
        <!-- //banner -->
        <!--grids -->

        <!-- footer -->
        <footer>
            <div class="copyright-agile">
                <div class="container">
                    <p>©All rights reserved | Design by
                        <a href="">W3layouts</a>
                    </p>
                </div>
            </div>
        </footer>
        <!-- //footer -->


        <!-- js -->
        <script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
        <!-- for bootstrap working -->
        <script src="../js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
        <!-- //js -->

        <!-- banner slider js -->
        <script type="text/javascript" src="../js/modernizr.custom.46884.js"></script>
        <script type="text/javascript" src="../js/jquery.slicebox.js"></script>
        <script type="text/javascript">
            $(function () {

            var Page = (function () {

            var $navArrows = $('#nav-arrows').hide(),
            $shadow = $('#shadow').hide(),
            slicebox = $('#sb-slider').slicebox({
            onReady: function () {

            $navArrows.show();
            $shadow.show();

            },
            orientation: 'r',
            cuboidsRandom: true
            }),

            init = function () {

            initEvents();

            },
            initEvents = function () {

            // add navigation events
            $navArrows.children(':first').on('click', function () {

            slicebox.next();
            return false;

            });

            $navArrows.children(':last').on('click', function () {

            slicebox.previous();
            return false;

            });

            };

            return {
            init: init
            };

            })();

            Page.init();

            });
        </script>
        <!-- //banner slider js -->

        <!-- //here starts scrolling icon -->
        <script src="../js/SmoothScroll.min.js"></script>
        <script type="text/javascript" src="../js/move-top.js"></script>
        <script type="text/javascript" src="../js/easing.js"></script>
        <!-- here stars scrolling script -->
        <script type="text/javascript">
            $(document).ready(function () {
            /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
            */

            $().UItoTop({
            easingType: 'easeOutQuart'
            });

            });
        </script>
        <!-- //here ends scrolling script -->
        <!-- //here ends scrolling icon -->

        <!-- scrolling script -->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({
            scrollTop: $(this.hash).offset().top
            }, 1000);
            });
            });
        </script>
        <!-- //scrolling script -->
        <!-- flexisel -->
        <script type="text/javascript" src="../js/jquery.flexisel.js"></script>
        <script type="text/javascript">
            $(window).load(function () {
            $("#flexiselDemo1").flexisel({
            visibleItems: 4,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
            portrait: {
            changePoint: 480,
            visibleItems: 1
            },
            landscape: {
            changePoint: 640,
            visibleItems: 2
            },
            tablet: {
            changePoint: 768,
            visibleItems: 3
            }
            }
            });

            });
        </script>
        <!-- //flexisel -->
        <!-- password-script -->
        <script>
            window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
            }

            function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
            document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
            }
        </script>
        <!-- //password-script -->

    </body>

</html>