<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%      String saveFile = "";     
 		String contentType = request.getContentType(); 
		//out.println(contentType);
		//String nombre = request.getParameter("nombre");  
        //String cedula = request.getParameter("cedula");  
        //out.println("cedula----" + cedula);  
        //out.println("nombre----" + nombre); 
		  
     	if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
      {            
      				DataInputStream in = new DataInputStream(request.getInputStream()); 
					int formDataLength = request.getContentLength();      
					byte dataBytes[] = new byte[formDataLength];     
					int byteRead = 0;       
					int totalBytesRead = 0;    
					while (totalBytesRead < formDataLength) 
					{      
						byteRead = in.read(dataBytes, totalBytesRead, formDataLength);   
						totalBytesRead += byteRead;
					}         
					String file = new String(dataBytes);      
					//out.println(file);
					///gopal
						String B_NO="";
						String B_NAME="";
						String B_ATHR="";
						
						String B_PBLSHR="";
						String B_SUB="";
						String B_CAT="";
						String B_PAGENOS="";
						String B_EDSN="";
					
						int i,j,index1;
					
					
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("B_NO")!=(-1))
						{
							index1 =(file.indexOf("B_NO")+5);
							for(j=index1;file.charAt(j)!='-';j++)
							{B_NO=B_NO+file.charAt(j);}
							break;
						}
					}
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("B_NAME")!=(-1))
						{	
							index1=(file.indexOf("B_NAME")+7);
							for(j=index1;file.charAt(j)!='-';j++)
							{B_NAME=B_NAME+file.charAt(j);}
							break;
						}
					}
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("B_ATHR")!=(-1))
						{
							index1=(file.indexOf("B_ATHR")+7);
							for(j=index1;file.charAt(j)!='-';j++)
							{B_ATHR=B_ATHR+file.charAt(j);}
							break;
						}
					}
					
					
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("B_PBLSHR")!=(-1))
						{	
							index1=(file.indexOf("B_PBLSHR")+9);
							for(j=index1;file.charAt(j)!='-';j++)
							{B_PBLSHR=B_PBLSHR+file.charAt(j);}
							break;
						}
					}
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("B_SUB")!=(-1))
						{
							index1=(file.indexOf("B_SUB")+6);
							for(j=index1;file.charAt(j)!='-';j++)
							{B_SUB=B_SUB+file.charAt(j);}
							break;
						}
					}
					
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("B_CAT")!=(-1))
						{	
							index1=(file.indexOf("B_CAT")+6);
							for(j=index1;file.charAt(j)!='-';j++)
							{B_CAT=B_CAT+file.charAt(j);}
							break;
						}
					}
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("B_PAGENOS")!=(-1))
						{
							index1=(file.indexOf("B_PAGENOS")+10);
							for(j=index1;file.charAt(j)!='-';j++)
							{B_PAGENOS=B_PAGENOS+file.charAt(j);}
							break;
						}
					}
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("B_EDSN")!=(-1))
						{
							index1=(file.indexOf("B_EDSN")+7);
							for(j=index1;file.charAt(j)!='-';j++)
							{B_EDSN=B_EDSN+file.charAt(j);}
							break;
						}
					}
					
					
					
					///gopal
					saveFile = file.substring(file.indexOf("filename=\"") + 10);   
					saveFile = saveFile.substring(0, saveFile.indexOf("\n"));  
					saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));            
					int lastIndex = contentType.lastIndexOf("=");            
					String boundary = contentType.substring(lastIndex + 1, contentType.length());            
					int pos;            
					pos = file.indexOf("filename=\"");            
					pos = file.indexOf("\n", pos) + 1;           
					pos = file.indexOf("\n", pos) + 1;            
					pos = file.indexOf("\n", pos) + 1;            
					int boundaryLocation = file.indexOf(boundary, pos) - 4;            
					int startPos = ((file.substring(0, pos)).getBytes()).length;            
					int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;            
					B_NAME=saveFile;
					saveFile = "C:/Program Files (x86)/Apache Software Foundation/Tomcat 8.0/webapps/e-library/books/" + saveFile;            
					File ff = new File(saveFile);            
					FileOutputStream fileOut = new FileOutputStream(ff);            
					fileOut.write(dataBytes, startPos, (endPos - startPos));            
					fileOut.flush();            
					fileOut.close();
					
					
					
					Connection connection=null;
					PreparedStatement ps=null;
					PreparedStatement ps1=null;
					PreparedStatement ps2=null;
					try
					{
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("insert into buk_detail values(?,?,?,?,?,?)");
						ps1=connection.prepareStatement("insert into b_prop values(?,?,?)");
						ps2=connection.prepareStatement("insert into add_b_info values(?,?,?)");
						
						String GR_NO=(String)(session.getAttribute("GR_NO"));
												
						if(GR_NO==""||B_NO==""||B_NAME==""||B_ATHR==""||B_PBLSHR==""||B_SUB==""||B_CAT==""||B_PAGENOS==""||B_EDSN=="")
						{
							out.println("Please Enter all Fields");
						}
						else
						{
							
						GR_NO=GR_NO.trim();
						B_NO=B_NO.trim();
						B_NAME=B_NAME.trim();
						B_ATHR=B_ATHR.trim();
						B_PBLSHR=B_PBLSHR.trim();
						B_SUB=B_SUB.trim();
						B_CAT=B_CAT.trim();
						B_PAGENOS=B_PAGENOS.trim();
						B_EDSN=B_EDSN.trim();
						
						
						ps.setString(1,B_NO);
						ps.setString(2,B_NAME);
						ps.setString(3,B_ATHR);
						ps.setString(4,B_PBLSHR);
						ps.setString(5,B_SUB);
						ps.setString(6,B_CAT);
						ps.executeUpdate();
						
						ps1.setString(1,B_NO);
						ps1.setString(2,B_PAGENOS);
						ps1.setString(3,B_EDSN);
						ps1.executeUpdate();
						
						ps2.setString(1,GR_NO);
						ps2.setString(2,B_NO);
						ps2.setString(3,B_NAME);
						
						ps2.executeUpdate();
						
						//out.println("UPLOAD SUCCESSFUL");
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
					response.sendRedirect("main.jsp");
%>
<!--<Br><table border="2"><tr><td><b>You have successfully upload the file by the name of:</b><% out.println(saveFile);} %></td></tr></table>-->