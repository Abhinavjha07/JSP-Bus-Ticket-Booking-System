<%@ page import ="java.util.*,java.sql.*,java.io.*"%>
<%!String JDBC_DRIVER = "com.mysql.jdbc.Driver";%>
   <%!String DB_URL = "jdbc:mysql://localhost/project";%>
   <%!String USER = "root";%>
   <%!String PASS = "";%>
   <%!Connection con = null;%>
<%
	Statement st=null;
	ResultSet rs=null;
		 String s1=request.getParameter("id");
		 String s2=request.getParameter("pwd");
		 String s3=request.getParameter("role");
	try
	{
		 Class.forName(JDBC_DRIVER);
		   con=DriverManager.getConnection(DB_URL,USER,PASS);
		   st=con.createStatement();
		
		   if(s3.equals("ruser"))
		   {
			   session.setAttribute("userId",s1);
			   String sql="SELECT *FROM users where id='"+s1+"'AND pwd='"+s2+"'";
			  rs=st.executeQuery(sql);
			   if(rs.next())
			   {
				   response.sendRedirect("User.jsp");
			   }
			   else
			   {
					response.sendRedirect("UserError.jsp");
			   }
		   }
		   else if(s3.equals("admin"))
		   {
			 String sql="SELECT *FROM admin where id='"+s1+"'AND pwd='"+s2+"'";
			   rs=st.executeQuery(sql);
			   if(rs.next())
			   {
				   response.sendRedirect("AdminFront.jsp");
			   }
			   else
			   {
					response.sendRedirect("AdminError.jsp");
			   } 
		   }
	}catch(Exception e)
	{
		out.println(e);
	}
	finally
	{
		try
		{
			rs.close();
		st.close();
		con.close();
		}catch(Exception e){}
		
	}
%>