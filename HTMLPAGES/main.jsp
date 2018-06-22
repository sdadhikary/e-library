<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*" errorPage="" session="true" %>
	<html>
    	<head>
			
	        <title>e-Library website</title>
			<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	        <link href="../css/styles.css" rel="stylesheet" type="text/css" media="screen" />
            <link rel="stylesheet" href="jquery-ui.css">
    		<script src="ajaxjs.js"></script>
            <script src="ajaxjs1.js"></script>
  			<script src="jquery-1.3.1.js"></script>
			<script src="jquery.validate.js"></script>
			<script src="jquery-1.8.2.js"></script>
			<script src="jquery-ui.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			<link rel="stylesheet" type="text/css" href="../css/slicebox.css" />

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
			<script type="text/javascript">
			
			function a()
			{
				alert("G");				
			}
			</script>
            
			<script>
			$("document").ready(
			function()
			{
				$("#datepicker").datepicker(
				{
				dateFormat:"dd/mm/yy",
				changeYear:true,
				 yearRange:"1900:2014",
				 changeMonth:true,
				changeDate:true
			    })		
			})
			</script>

		
			<style>
			.cls1
			{
				color:red;
			}
	  		</style>
			<script>
			$("document").ready(
			function()
			{
				$("#f1").validate(
				{errorClass:"cls1"
				})
			})
			</script>

    </head>
    <body id="bodybg">
        <div id="mainbg" style=" height:700px;">
            	<!-- header begins -->
                <%@ include file="header.jsp" %> 
            	<!--Header end-->
                <!-- content begins -->
                <div id="main">   
            		<%@ include file="container.jsp" %>
                </div>
                <!-- content ends -->
                <!-- footer begins -->
            <%@ include file="footer.jsp" %>
                <!-- footer ends -->
        </div>
    </body>
</html>