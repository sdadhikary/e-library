<html>

<!-- Head -->
<head>

	<title>Library Member Login Form A Flat Responsive Widget Template :: W3layouts</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="keywords" content="Library Member Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" href="../css/style-reg.css" type="text/css" media="all">
					

	<!-- Fonts -->
		<link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
	<!-- //Fonts -->
	
	<link rel="stylesheet" href="jquery-ui.css">
<script src="jquery-1.3.1.js"></script>
<script src="jquery-1.8.2.js"></script>
<script src="jquery-ui.js"></script>
<script src="jquery.ui.widget.js"></script>
<script src="jquery.validate.js"></script>
	
	<script>
 $("document").ready(
function()
{
$("#form1").validate(
{errorClass:"cls1"
})
})
$("document").ready(
function() 
{
$("#datepicker").datepicker(
{
  dateFormat:"dd/mm/yy",
  changeYear:true,
  yearRange:'1970:2014',
  changeMonth:true,
 changeDate:true
 })
  })
</script>

</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>LIBRARY MEMBER LOGIN FORM</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2>Sign In</h2>
			<form action="login-reg.jsp" method="post" name="login">
				<input type="text" placeholder="Username" required value="GR_NO" name="userName" onFocus="if(this.value=='GR_NO'){this.value=''}" onBlur="if(this.value==''){this.value='GR_NO'}">
				<input type="password" placeholder="Password" style="margin-left:5px" value="PASSWORD" name="password" onFocus="if(this.value=='PASSWORD'){this.value=''}" onBlur="if(this.value==''){this.value='PASSWORD'}" required>
			
			<ul class="tick w3layouts agileits">
				<li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>Remember me</label>
				</li>
			</ul>
			<div class="send-button w3layouts agileits">
					<input type="submit" value="Sign In">
			</div>
			</form>
			
			<a href="#">Forgot Password?</a>
			<div class="social-icons w3layouts agileits">
				<p>- Or Sign In With -</p>
				<ul>
					<li><a href="#"><span class="icons w3layouts agileits"></span><span class="text w3layouts agileits">Facebook</span></a></li>
					<li class="twt w3ls"><a href="#"><span class="icons w3layouts"></span><span class="text w3layouts agileits">Twitter</span></a></li>
					<li class="ggp aits"><a href="#"><span class="icons agileits"></span><span class="text w3layouts agileits">Google+</span></a></li>
					<div class="clear"> </div>
				</ul>
			</div>
			<div class="clear"></div>
		</div>

		<div class="register w3layouts agileits">
			<h2>Sign Up</h2> 
			<form action="GR_DETAILServlet11.jsp" method="post" id="form1" name="form1">
				<input type="text" name="ID" placeholder="GR_NO" class="required">
				<input type="text" name="txtfname" placeholder="First Name" required="">
				<input type="text" name="txtmname" placeholder="Middle Name">
				<input type="text" name="txtlname" placeholder="Last Name" required="">
				
				
									<SELECT class="sel" NAME="DEPT" placeholder="Department"> 
									<optgroup style="background-color:black">
									<option value="ENGG">Engineering</option>
									<option value="POLY">Polytechnique</option>
									<option value="PHAR">Pharmacy</option>
									<option value="MBA">MBA</option>
									</optgroup>
									</SELECT>
									
									<h5 style="color:white;margin-left:130px;margin-bottom:10px;">CLASS<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT class="sel" NAME="CLASS">
									<optgroup style="background-color:black">
									<option value="MCA">MCA</option>
									<option value="E&TC">E&TC </option>
									<option value="MECH">Mechanical</option>
									<option value="ELECT">Electonics</option>
                                    <option value="COMP">Computer</option>
                                    <option value="CIVIL">Civil</option>
									</optgroup>
									</SELECT>
									
                                    <h5 style="color:white;margin-left:100px;margin-bottom:10px;">ACADMIC_ YEAR<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <SELECT NAME="C_YEAR" class="sel">
									<optgroup style="background-color:black">
									<option value="1">1st</option>
									<option value="2">2nd</option>
									<option value="3">3rd</option>
									<option value="4">4th</option>
									</optgroup>
									</SELECT>
									
                                    <h5 style="color:white;margin-left:130px;margin-bottom:10px;">C_SEM<h5>&nbsp;&nbsp;&nbsp;
                                    <SELECT NAME="C_SEM" class="sel">
									<optgroup style="background-color:black">
									<option value="1">1st</option>
									<option value="2">2nd</option>
									<option value="3">3rd</option>
									<option value="4">4th</option>
                                    <option value="5">5th</option>
                                    <option value="6">6th</option>
                                    <option value="7">7th</option>
                                    <option value="8">8th</option>
									</optgroup>
									</SELECT>
									
                                    <input type="text" placeholder="YOA" id="datepicker" class="date" placeholder="DD/MM/YYYY"/ name="YOA">
                            
									<h5 style="color:white;margin-left:100px;margin-bottom:10px;">RECIDENT INFO</h5>
                                    <input type="text" name="H_NO" placeholder="HOUSE NO"/>
									<input type="text" name="H_NAME" placeholder="HOUSE NAME"/>
									<input type="text" name="COLN_NAME" placeholder="SOCIETY"/>
									<input type="text" name="AREA" placeholder="AREA"/>
                                    <input type="text" name="L_MARK"class="required" placeholder="LAND MARK"/>
									<input type="text" name="POST_OFI" class="required" placeholder="POST OFFICE"/>
									
                                    <h5 style="color:white;margin-left:130px;margin-bottom:10px;">STATE</h5><SELECT NAME="STATE" class="sel"> 
									<optgroup style="background-color:black;">
									<option value="MR">Maharashtra</option>
									<option value="DL">Delhi</option>
                                    <option value="JK">J & K</option>
									<option value="BR">Bihar</option>
									<option value="RJ">Rajsthan</option>
									<option value="GJ">Gujrat</option>
									<option value="AP">Andrapradesh</option>
									<option value="WB">West Bengal</option>
									<option value="KR">karnatak</option>
									</optgroup>
									</SELECT>
									<input type="text" name="DIST" class="required" placeholder="DIST">
								    <input type="text" name="TQ" class="required" placeholder="TALUKA"/>
                                    <input type="text" name="PIN_CODE" class="number required" placeholder="PIN CODE"/>
									<h5 style="color:white;margin-left:100px;margin-bottom:10px;">CONTACT INFO<h5>
                                    <input type="text" name="M_NO1" class="number required" maxlength="10" placeholder="MOBILE NO 1"/>
									&nbsp;&nbsp;&nbsp;<input type="text" name="M_NO2" maxlength="10" placeholder="MOBILE NO 2"/>
									<type="text" name="PHN_NO"  maxlength="11" placeholder="PHONE"/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  name="EMIL"/ class="email required" placeholder="EMAIL ID">
									
				
					<div class="send-button w3layouts agileits">
						<input type="submit" value="Sign Up">
			</form>
			</div>
			<p>By creating an account, you agree to our <a class="underline w3layouts agileits" href="#">Terms</a></p>
			<div class="clear"></div>
		</div>

		<div class="clear"></div>

	</div>

	<div class="footer w3layouts agileits">
		<p> &copy; 2016 Library Member Login Form. All Rights Reserved | Design by <a href="http://w3layouts.com" target="_blank">W3layouts</a></p>
	</div>
</body>
<!-- //Body -->

</html>