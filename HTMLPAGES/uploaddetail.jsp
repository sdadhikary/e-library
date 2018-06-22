<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.io.*" %>
<%
					Connection connection=null;
					PreparedStatement ps=null;
					try
					{
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("insert into upload_detail values(?,?,?,?,?,?,?)");
						
						String GR_NO=(String)(session.getAttribute("GR_NO"));
						String F_FILE=request.getParameter("F_FILE");
						String F_TITLE=request.getParameter("F_TITLE");
						String F_TYPE=request.getParameter("F_TYPE");
						
						String F_SUB=request.getParameter("F_SUB");
						String U_DATE=( new java.text.SimpleDateFormat("dd-MMM-yy").format(new java.util.Date()));
						String U_TIME=( new java.text.SimpleDateFormat("hh:mm:ss aa").format(new java.util.Date()));
						
						if(GR_NO==""||F_TITLE==""||F_TYPE==""||F_SUB==""||F_FILE=="")
						{
							out.println("Please Enter all Fields");
						}
						else
						{
							
						GR_NO=GR_NO.trim();
						F_TITLE=F_TITLE.trim();
						F_TYPE=F_TYPE.trim();
						F_SUB=F_SUB.trim();
						//F_NAME=F_NAME.trim();
						
						ps.setString(1,GR_NO);
						ps.setString(2,"KK");
						ps.setString(3,F_TITLE);
						ps.setString(4,F_TYPE);
						ps.setString(5,F_SUB);
						ps.setString(6,U_DATE);
						ps.setString(7,U_TIME);
						ps.executeUpdate();
						
						
						
		//				out.println("UPLOAD SUCCESSFUL");
						}
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
	  
					%>
<html>
<head>
<script>
function a1()
			{
				alert("HH");
				document.getElementById("form2").submit();
			}
</SCRIPT>
<body onload="a2();">
</body>
</html>