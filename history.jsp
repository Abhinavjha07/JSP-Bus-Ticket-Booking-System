<html>
<head>
<title>Previous Bookings
</title>
</head>

<body>
<h1><p align ="center">Your previous booking</p></h1><br><br>
<left><h2>
<%@ page import ="java.util.*,java.sql.*,java.io.*"%>
<%!String JDBC_DRIVER = "com.mysql.jdbc.Driver";%>
   <%!String DB_URL = "jdbc:mysql://localhost/project";%>
   <%!String USER = "root";%>
   <%!String PASS = "";%>
   <%!Connection con = null;%>
   <%
   Statement stmt=null;
   ResultSet rs=null;
  
    try
		 {
			Class.forName(JDBC_DRIVER);
		    con=DriverManager.getConnection(DB_URL,USER,PASS);
		    stmt=con.createStatement();
			String sql="Select * from details where U_id='"+session.getAttribute("userId")+"'";
			rs=stmt.executeQuery(sql);
			int flag=0;
			if(rs.next())
			{
			rs.previous();
			out.println("<pre>UserId           Date              Bus_Id           Number_of_Tickets</pre>");
				while(rs.next())
			{	
				flag=1;
				int a=rs.getInt("U_id");
				String b=rs.getString("date");
				int c=rs.getInt("bus_id");
				int d=rs.getInt("tickets");
				
				out.println("<pre> "+a+"          "+b+"            "+c+"                 "+d+"</pre>");
				
			}	
			}
			if(flag==0)
			{
				out.println("<br><br><br><br><br><center>You dont have any previous bookings</center><br>");
			}
				}catch(Exception e){}
		 finally
		 {
			 try{
			 stmt.close();
			 rs.close();
			 con.close();
			 }catch(Exception e){}
		 }
	%>
	
	</h2></left>
   <br><br><br><br><br><br>
 <h2><p align ="center"><a href="User.jsp">Continue </a></p></h2>
</body>
</html>