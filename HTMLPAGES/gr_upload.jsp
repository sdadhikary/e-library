<%@ page language="java" import="java.sql.*,java.io.*,javax.swing.*" errorPage="" %>
<style>
#snackbar {
    visibility: hidden;
    min-width: 250px;
    margin-left: -125px;
    background-color: #333;
    color: #fff;
    text-align: center;
    border-radius: 2px;
    padding: 16px;
    position: fixed;
    z-index: 1;
    left: 50%;
    bottom: 30px;
    font-size: 17px;
}

#snackbar.show {
    visibility: visible;
    -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
    animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@-webkit-keyframes fadein {
    from {bottom: 0; opacity: 0;} 
    to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
    from {bottom: 0; opacity: 0;}
    to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
    from {bottom: 30px; opacity: 1;} 
    to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
    from {bottom: 30px; opacity: 1;}
    to {bottom: 0; opacity: 0;}
}
</style>


<script>
function myFunction() {
    var x = document.getElementById("snackbar")
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
</script>
<%
	String gr_no=request.getParameter("GR_NO");
	String gr_cat=request.getParameter("GR_CAT");
	gr_no=gr_no.trim();
	gr_cat=gr_cat.trim();
	if(gr_no=="" || gr_cat=="")
	{
		response.sendRedirect("main.jsp");
	}
	else
	{
				Connection connection=null;
				PreparedStatement ps=null;
				
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("insert into GR_DETAIL values(?,?)");
						ps.setString(1,gr_no);
						ps.setString(2,gr_cat);
						ps.executeUpdate();
						out.println("UPLOAD SUCCESSFUL");
						
						//response.sendRedirect("main.jsp");
					} 
				catch(ClassNotFoundException ce)
					{
						//out.println("Error "+ce);
						out.println("THERE IS PROBLEM");
					}
				catch(SQLException se)
					{
						//out.println("Error "+se);
						out.println("THERE IS PROBLEM");
						
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
			 %><br />
<a href="main.jsp">HOME</a>