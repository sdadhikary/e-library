<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<%				
				String [] de=request.getParameterValues("de");
				Connection connection=null;
				PreparedStatement ps1=null;
				PreparedStatement ps2=null;
				PreparedStatement ps3=null;
				PreparedStatement ps4=null;
				PreparedStatement ps5=null;
				PreparedStatement ps6=null;
							
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						
						ps1=connection.prepareStatement("delete from gr_name where gr_no= ? ");
						ps2=connection.prepareStatement("delete from login_detail where gr_no=?");
						ps3=connection.prepareStatement("delete from login_detail where gr_s_dept=?");
						ps4=connection.prepareStatement("delete from login_detail where gr_staf=?");
						ps5=connection.prepareStatement("delete from login_detail where gr_cntc=?");
						ps6=connection.prepareStatement("delete from login_detail where gr_padd=?");
						
						for(int i=0;i<de.length;i++)
						{
							ps1.setString(1,de[i]);
							ps2.setString(1,de[i]);
							ps3.setString(1,de[i]);
							ps4.setString(1,de[i]);
							ps5.setString(1,de[i]);
							ps6.setString(1,de[i]);
							ps1.execute();
							ps2.execute();
							ps3.execute();
							ps4.execute();
							ps5.execute();
							ps6.execute();
						}	
					out.println("DELETE SUCCESFUL");
					} 
				catch(ClassNotFoundException ce)
					{
						out.println("Error "+ce);
					}
				catch(SQLException se)
					{
						//out.println("Error "+se);
					}
				finally
					{
						try
						{
							
							ps1.close();
							ps2.close();
                      		ps3.close();
							ps4.close();
                      		ps5.close();
							ps6.close();
                      		
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