 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>

<html>
<head>

<%@include file="head.jsp" %>
<link rel="stylesheet" href="../css/Admin.css">

</head>
<body>

<%@include file="adminHeader.jsp" %>

<section>
	<div class="container dashboard">
		<h1>DashBoard</h1>
		 <div class="bor">
		<hr>
		</div>
	<% 	
		
		try{
	Connection con;
	String query;
	Statement st;
	ResultSet rs;
	
	con=dbConnection.getConnection();
	st=con.createStatement();
	rs=st.executeQuery("Select sum(Total_Bill) from transactions");
	while(rs.next()){
		%>
		
	<h5>Total Sales: Rs. <%=rs.getInt(1)%>.00</h5>
	 
<% 	 }
	
	ResultSet rs1=st.executeQuery("Select count(delivery_id) from delivery");
	while(rs1.next()){
		%>
		<h5>Total Number of deliveries: <%=rs1.getInt(1)%></h5>
		
<% 	}
	ResultSet rs2=st.executeQuery("Select count(product_id) from products");
	while(rs2.next()){
		%>
		 <div class="bor">
		<hr>
		</div>
		
	<h5>Total Products: <%=rs2.getInt(1)%></h5>
		
<% 	}
	ResultSet rs3=st.executeQuery("Select count(employee_id) from employees");
	while(rs3.next()){
		%>
		<h5>Total Employees: <%=rs3.getInt(1)%></h5>
	<% }	
}catch(Exception e){
	
	System.out.println(e);
}
	%>
		
	
	
		
	
		
	
	
	</div>
	

</section>
</body>
</html>