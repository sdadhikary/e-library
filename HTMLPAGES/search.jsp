<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<div class="empty">
<h1>SEARCH RESULT</h1>
<table class="text" width="100%" style="color:white">
<tr>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:left;border-style:solid;border-color:#229dff;">FILE_NAME</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:left;border-style:solid;border-color:#229dff;">FILE_TITLE</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:left;border-style:solid;border-color:#229dff;">TYPE</th>
</tr>
<%
				String SR=request.getParameter("search");
				SR=SR.trim();
				if(SR=="")
				{
					response.sendRedirect("main.jsp");
				}
				else
				{
				Connection connection=null;
				PreparedStatement ps=null;
				PreparedStatement ps1=null;
				PreparedStatement ps2=null;
				 //AJAX and PHP.pdf";
				
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("Select * from BUK_DETAIL WHERE B_NAME LIKE ? ");
						ps1=connection.prepareStatement("Select * from UPLOAD_DETAIL WHERE F_NAME LIKE  ? or F_TITLE LIKE ?");
						ps2=connection.prepareStatement("Select * from N_UPLOAD WHERE N_SUB LIKE  ?");
						ps.setString(1,"%" + SR + "%");
						ps1.setString(1,"%" + SR + "%");
						ps1.setString(2,"%" + SR + "%");
						ps2.setString(1,"%" + SR + "%");	
						ResultSet rs=ps.executeQuery();
						ResultSet rs1=ps1.executeQuery();
						ResultSet rs2=ps2.executeQuery();
						//status=rs.next();
						while(rs.next())
						{
							String f="../books/" + rs.getString("B_NAME");
							%>
                            
                            	<%--<tr><td><a href="<%= rs.getString("B_NAME")%>" target="_self">GOPAL</a></td></tr>--%>
								<tr><td style="text-align:left"><a href="<%= f %>"><%=rs.getString("B_NAME") %></a></td>
                                <td></td><td style="text-align:left">BOOK</td></tr>
							<%	
						}	
						
						while(rs1.next())
						{
							String f="../books/" + rs1.getString("F_NAME");
							%>
								<tr><td style="text-align:left"><a href="<%= f %>"><%=rs1.getString("F_NAME") %></a></td>
                                <td><%=rs1.getString("F_TITLE") %></td>
                                <td style="text-align:left"><%=rs1.getString("F_TYPE") %></td></tr>
							<%	
						}	
						
						while(rs2.next())
						{
							//String f="../books/" + rs3.getString("B_NAME");
							%>
                   
								<tr><td style="text-align:left"><a href="javascript:loadContent(8)"><%=rs2.getString("N_SUB") %></a></td>
                                <td style="text-align:left">NEWS</td></tr>
							<%	
						}	
					} 
				catch(ClassNotFoundException ce)
					{
						//out.println("Error "+ce);
						out.println("THERE IS PROBLEM.!!!");
					}
				catch(SQLException se)
					{
						//out.println("Error "+se);
						out.println("THERE IS PROBLEM.!!!");
					}
				finally
					{
						try
						{
							ps1.close();
							ps2.close();
							ps.close();
							if(connection!=null)
							{
							  connection.close();
							}
						}
						catch(Exception e)
						{
							//out.println("Error "+e);
 							out.println("THERE IS PROBLEM.!!!");
						}
					}
	
				}
%>
</table><br /><br />
<a href="main.jsp">HOME</a>

</div>
