<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<%				
				String [] de=request.getParameterValues("de");
				Connection connection=null;
				PreparedStatement ps1=null;	
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						
						ps1=connection.prepareStatement("delete from login_history");
						ps1.execute();
							
						out.println("DELETE SUCCESFUL");
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
							
							ps1.close();                     		
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
<div class="read"><a href="main.jsp">HOME</a></div>
</div>