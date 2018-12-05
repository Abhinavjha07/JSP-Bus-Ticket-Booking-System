<html>
<head><title>Admin</title></head>

<body><br><br>
<h1><p align="right"><a href="Welcome.jsp">Logout</a></p></h1>
	<h1><p align="Center">Enter the bus details</p></h1>
<br><br><h3>
<center>
<form action="addbuses.jsp" method="POST">
	<p>Bus_Id </p>
      <input type="text" name="bus_id" value=""><br>
	 <p>Source </p>
	  <input type="text" name="from" value=""><br>
	  <p>Destination </p>
	  <input type="text" name="to" value=""><br>
	 <p>Fare</p><h3>
	  <input type="text" name="fare" value=""><br>
	  <p>Total Seats</p>
	  <input type="text" name="tseats" value=""><br>
	  <p>Seats Remaining</p>
	  <input type="text" name="seatsr" value=""><br><br><br><br>
      <input type="submit" value="Submit" />
	
    </form>  </center></h3>
</body>

</html>