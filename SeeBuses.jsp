<html>
<head><title>Buses</title></head>
<body>
<center><h2><p>Buses in the database</p></h2>
<br<h3><p align="right"><a href="AdminFront.jsp">Go_Back</a></p></h3>
<%@ page import ="java.util.*,java.sql.*,java.io.*"%>
<%!String JDBC_DRIVER = "com.mysql.jdbc.Driver";%>
   <%!String DB_URL = "jdbc:mysql://localhost/project";%>
   <%!String USER = "root";%>
   <%!String PASS = "";%>
   <%!Connection con = null;%>
   <%
		Statement st=null;
		ResultSet rs=null;
		try
	{
		 Class.forName(JDBC_DRIVER);
		   con=DriverManager.getConnection(DB_URL,USER,PASS);
		   st=con.createStatement();
		   
		   String sql="Select * from buses";
		  rs=st.executeQuery(sql);
		  %>
		  <br><br>
		  <TABLE cellpadding="15" border="2">
		  <TR>
		 
			<TD> <h3>Bus_Id</h3></TD>
			<TD> <h3>Source</h3></TD>
			<TD> <h3>Destination</h3></TD>
			<TD> <h3>Fare</h3></TD>
			<TD> <h3>Total_Seats</h3></TD>
			<TD> <h3>Seats_Remaining</h3></TD>
			
			</TR>
		  <%
		  while(rs.next())
		  {
			%>
			<TR>
			<TD><%= rs.getInt("bus_id")%></TD>
			<TD><%= rs.getString("source")%></TD>
			<TD><%= rs.getString("destination")%></TD>
			<TD><%= rs.getInt("fare")%></TD>
			<TD><%= rs.getInt("total_seats")%></TD>
			<TD><%= rs.getInt("seats_rem")%></TD>
			</TR>
			<%
		  }			  
		  }catch(Exception e)
	{
		out.println(e);
	}
	finally
	{
		try
		{
		
		st.close();
		con.close();
		rs.close();
		}catch(Exception e){}
		
	}
   %>
</body>
</html>