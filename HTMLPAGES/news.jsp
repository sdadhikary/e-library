<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<div class="empty">
<h1>Digital Library</h1>
<table class="text" width="100%">
<tr>
  <th style="background-color:#F0F0F0 ; text-align:center;color:blue">DATE</th>
  <th style="background-color:#F0F0F0 ; text-align:center;">TIME</th>		
  <th style="background-color:#F0F0F0 ; text-align:center;">SUBJECT</th>
  <th style="background-color:#F0F0F0 ; text-align:center;">GEUST</th>
  <th style="background-color:#F0F0F0 ; text-align:center;">CORDINATOR</th>
  <th style="background-color:#F0F0F0 ; text-align:center;">PLACE</th>
</tr>
<%
				Connection connection=null;
				PreparedStatement ps=null;
				
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("Select * from N_UPLOAD");
						ResultSet rs=ps.executeQuery();
						
                        while(rs.next())
						{
							//String f="../books/" + rs.getString("B_NAME");
							%>
                            
                            	<%--<tr><td><a href="<%= rs.getString("B_NAME")%>" target="_self">GOPAL</a></td></tr>--%>
								<tr><td style="text-align:left"><%=rs.getString("N_DATE") %></td>
                                <td style="text-align:left"><%=rs.getString("N_TIME") %></td>
                                <td style="text-align:left"><%=rs.getString("N_SUB") %></td>
                                <td style="text-align:left"><%=rs.getString("GEUST") %></td>
                                <td style="text-align:left"><%=rs.getString("CORDINATOR") %></td>
                                <td style="text-align:left"><%=rs.getString("PLACE") %></td></tr>
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
</table>
<div class="read"><a href="#">read more</a></div>

</div>