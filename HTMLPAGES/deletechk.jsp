<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<div class="empty">
<h1>GR DETAILS</h1>
<%
				Connection connection=null;
				PreparedStatement ps1=null;
				
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						
						ps1=connection.prepareStatement("select gr_name.gr_no,f_name,m_name,l_name,pwd,r_date from gr_name,login_detail where gr_name.gr_no=login_detail.gr_no");
						ResultSet rs1=ps1.executeQuery();
                        %><form action="delete.jsp" method="post">
                        	<table width="100%" border="2" class="text" style="color:white">
                            <tr><th></th>
                              <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">GR_NO</th>
                              <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">F_NAME</th>
                              <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">M_NAME</th>
                              <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">L_NAME</th>
                              <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">PWD</th>
                              <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">R_DATE</th>
                              </tr>

                        <% while(rs1.next())
						{	String gr=rs1.getString("GR_NO");
							%><TR><td><input type="checkbox" name="de" value="<%= gr %>" /></td>
                                <td style="text-align:left"><%=rs1.getString("GR_NO") %></td>
                                <td style="text-align:left"><%=rs1.getString("F_NAME") %></td>
                                <td style="text-align:left"><%=rs1.getString("M_NAME") %></td>
                                <td style="text-align:left"><%=rs1.getString("L_NAME") %></td>
                                <td style="text-align:left"><%=rs1.getString("PWD") %></td>
                                <td style="text-align:left"><%=rs1.getString("R_DATE") %></td></tr>
                         <%  
                            	
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
<tr><td><input type="submit" value="DELETE"></td><td></td></tr>
</table>
</form>
<div class="read"><a href="javascript:loadContent(1)">HOME</a></div>

</div>