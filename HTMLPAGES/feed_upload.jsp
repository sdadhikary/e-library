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
        ps=connection.prepareStatement("insert into feedback values(?,?,?,?,?)");
        
        String GR_NO=(String)(session.getAttribute("GR_NO"));
        String LOOK=request.getParameter("LOOK");
        String USABLITY=request.getParameter("USABLITY");
        String L_SPEED=request.getParameter("L_SPEED");
        String SUGE=request.getParameter("SUGE");
        if(GR_NO==""||LOOK==""||USABLITY==""||L_SPEED==""|| SUGE=="")
        {
        	out.println("Please Enter all Fields");
        }
        else
        {
        GR_NO=GR_NO.trim();
        LOOK=LOOK.trim();
        USABLITY=USABLITY.trim();
        L_SPEED=L_SPEED.trim();
        SUGE=SUGE.trim();
        
		ps.setString(1,GR_NO);
		ps.setString(2,LOOK);
        ps.setString(3,USABLITY);
        ps.setString(4,L_SPEED);
        ps.setString(5,SUGE);
        ps.executeUpdate();
        
        out.println("UPLOAD SUCCESSFUL");
		
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