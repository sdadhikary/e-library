<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="StyleSheet" type="text/css" href="login.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding-top: 20px;
	padding-right: 60px;
    font-size: 16px;
	text-align:right;
    border: none;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #3e8e41;
}

.dropdown {
    position:absolute;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position:absolute;
	box-shadow:7px 7px;
	border-radius:10px;
    background-color: #f9f9f9;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #f1f1f1}

.show {display:block;}
</style>

<script>
function a()
{
 document.getElementById("form1").submit();
}
</script>

</head>

<body background="../images/img24.jpg">


<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}
</script>

<div id="head"style=" margin-top:2%; margin-left:10%">
<img src="../images/logo2.png"></img>
</div>
<h4 style=" margin-left:15%; margin-top:0%">When Shall we Cease to Learn ? Never Never..</h4>
<div id="social" style="padding-left:2">
<a href="http:www.facebook.com"class="s1"><img src="../images/6.jpg"></a>      <a href="http:www.twitter.com" class="s1"><img src="../images/3.png"></a>      <a href="http:www.gmail.com" class="s1"><img src="../images/gmail.jpg"></a>      <a href="http:www.googleplus.com" class="s1"><img src="../images/images.jpg"></a>          <a href="http:www.youtube.com" class="s1"><img src="../images/youtube-logo.png"></a>
</div>
<div class="dropdown pull-right">
<button onclick="myFunction()" class="dropbtn btn btn-block"><i class="fa fa-lock" style="font-size:30px"></i></button>
  <div id="myDropdown" class="dropdown-content" style="background-color:#00b3b3;font-family:Monospace">
    
	<form action="login.jsp" method="post" name="login">
	<div class="row" style="font-family:Monospace">
	<div class="col-xs-4"><p>Username<input type="text" required value="GR_NO" name="userName" onFocus="if(this.value=='GR_NO'){this.value=''}" 
	onBlur="if(this.value==''){this.value='GR_NO'}"></p></div>
	</div>
    <div><p>Password<input type="password" value="PASSWORD" name="password" onFocus="if(this.value=='PASSWORD'){this.value=''}" 
	onBlur="if(this.value==''){this.value='PASSWORD'}" required></p></div>
	<p><button type="submit" class="btn btn-block text-primary"><i class="fa fa-paper-plane"></i>Login</button></p>
	<!--input type="submit" value="Login"-->
	</form>
    
  </div>
</div>
<div style="width:1000px;height:350px; background-color:#0F6 inherit">

<div class="log" style="width:30%; height:35%; background:url(../images/img24.jpg); border-top-color:#000; padding:10px;margin-left:32%;margin-top:15%;margin-bottom:30;float:left"><a href="Help.txt" style="text-decoration:none"><h1><i class="fa fa-question-circle"></i> Help</h1></a>
</div>
<div class="log" style="width:30%; height:35%; background:url(../images/img24.jpg); padding:10px;margin-left:2%;margin-top:15%;margin-bottom:30;float:left">
<center><form action="registration.jsp" method="post" id="form1">
<input type="text" name="GR_NO" placeholder="GR_NO"  />
</form>
<a style="text-decoration:none" onClick="a();" ><h1>Registration</h1></a>
</center></div>
<div class="log" style="width:30%; height:35%; background:url(../images/img24.jpg);padding:10px;margin-left:32%;margin-bottom:30;margin-top:1%;float:left"><a href="aboutus.jsp" style="text-decoration:none"><h1><i class="fa fa-address-book"></i> Contact Us</h1></a>
</div>
<div class="log fa" style="width:30%; height:35%; background:url(../images/img24.jpg); padding:10px;margin-left:2%;margin-top:1%;margin-bottom:30;float:left"><a href="" style="text-decoration:none"><h1><i class="fa fa-info-circle"></i>About Us</h1></a>
</div>

</div>



</body>
</html>