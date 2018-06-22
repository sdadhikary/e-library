<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,java.io.*,java.net.*" errorPage="" session="true"  %>
<html>
	<head>
    </head>
    <body bgcolor="#CCCCCC">
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
	</body>
    
</html>