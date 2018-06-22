<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,java.io.*,java.net.*" errorPage="" session="true"  %>
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

</head>
<!-- //Head -->

<!-- Body -->
<body>

<% 			String gr_no=request.getParameter("GR_NO");
				String gr_cat="";
				if(gr_no=="")
				{
					response.sendRedirect("index_1.jsp");
				}
				else
				{
				Connection connection=null;
				PreparedStatement ps=null;
				PreparedStatement ps1=null;
				PreparedStatement ps2=null;
				PreparedStatement ps3=null;				
				boolean status3=false;
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("Select * from GR_DETAIL where GR_NO = ?");
						ps3=connection.prepareStatement("Select * from LOGIN_DETAIL where GR_NO = ?");
						ps.setString(1,gr_no);
						ps3.setString(1,gr_no);
						ResultSet rs=ps.executeQuery();
						ResultSet rs3=ps3.executeQuery();
						status3=rs3.next();
						if(status3==true)
						{response.sendRedirect("index_1.jsp");	}
						while((rs.next()))
						{
						gr_cat=rs.getString("GR_CAT");
						}
						//out.println(gr_cat);
					} 
				catch(ClassNotFoundException ce)
					{
						out.println("Error "+ce);
					}
				catch(SQLException se)
					{
						out.println("Error "+se);
					}
				finally
					{
						try
						{
							ps.close();
							if(connection!=null)
							{
							  connection.close();
							}
						}
						catch(Exception e)
						{
							out.println("Error "+e);
						}
					}
				 
				}
	%>    
		
			<div class="content_box">      
	<% if((gr_cat).equals("STUDENT")){%>
    <jsp:include page="reg1.jsp" /><% }else if((gr_cat).equals("STAFF") || (gr_cat).equals("LIBR")){%>
    <jsp:include page="reg2.jsp" /> <% } else { out.println("YOU ARE NOT IN DATABASE PLEASE CONTACT TO ADMIN"); }%>					
		</div>

	<h1>LIBRARY MEMBER LOGIN FORM</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2>Sign In</h2>
			<form action="#" method="post">
				<input type="text" Name="Userame" placeholder="Username" required="">
				<input type="password" Name="Password" placeholder="Password" required="">
			</form>
			<ul class="tick w3layouts agileits">
				<li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>Remember me</label>
				</li>
			</ul>
			<div class="send-button w3layouts agileits">
				<form>
					<input type="submit" value="Sign In">
				</form>
			</div>
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
			<form action="#" method="post">
				<input type="text" Name="Name" placeholder="Name" required="">
				<input type="text" Name="Email" placeholder="Email" required="">
				<input type="password" Name="Password" placeholder="Password" required="">
				<input type="text" Name="Phone Number" placeholder="Phone Number" required="">
			</form>
			<div class="send-button w3layouts agileits">
				<form>
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