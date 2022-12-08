 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>

<html>
<head>


 <%@include file="head.jsp" %>
</head>
<body>
<%@include file="adminHeader.jsp" %>
<%String s_id=request.getParameter("id");

int id=Integer.parseInt(s_id); %>
<div class="container">
	<h1>Edit Employee Detail</h1>
	<h3>Employee Id is <%out.println(id);%></h3>
<form action="EditEmployeeAction.jsp" method="post">
<input type="hidden" name="id" value=<%out.println(id);%>>	

<%

Connection con;
String query;
Statement st;
ResultSet rs;

try{
	con=dbConnection.getConnection();
	st=con.createStatement();
	rs=st.executeQuery("Select * from employees where employee_id="+id+"");
	
	while(rs.next()){
	%>	
	<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" placeholder="Product Name" name="fname" value="<%=rs.getString(2)%>">
  <label for="floatingInput">First Name</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" placeholder="Product Name" name="lname" value="<%=rs.getString(3)%>">
  <label for="floatingInput">Last Name</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingPassword" placeholder="Quantity" name="contact" value="<%=rs.getString(4)%>">
  <label for="floatingPassword">Contact Number</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingPassword" placeholder="Price" name="address" value="<%=rs.getString(5)%>">
  <label for="floatingPassword">Address</label>
</div>
<div class="form-floating mb-3">
  <select class="form-select form-select-lg mb-2" aria-label=".form-select-lg example" name="availibility">
						<option selected >Select Status</option>
						<option value="unavailable">Unavailable</option>
						<option value="available">Available</option>
						
</select>
	
	<%
	}
	
}catch(Exception e){
	
}


%>
	
<button type="submit" class="btn btn-primary mb-3">Update Details</button>
                    </div>


</form>
	
	
	
</div>


</body>
</html>