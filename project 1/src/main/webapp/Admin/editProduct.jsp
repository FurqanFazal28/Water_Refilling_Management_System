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
	<h1>Edit Products Detail</h1>
	<h3>Product Id is <%out.println(id);%></h3>
<form action="EditProductAction.jsp" method="post">
<input type="hidden" name="id" value=<%out.println(id);%>>	

<%

Connection con;
String query;
Statement st;
ResultSet rs;

try{
	con=dbConnection.getConnection();
	st=con.createStatement();
	rs=st.executeQuery("Select * from products where product_id="+id+"");
	//rs=st.executeQuery("Select * from products ");
	while(rs.next()){
	%>	
	<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" name="name" value="<%=rs.getString(2)%>">
  <label for="floatingInput">Product Name</label>
</div>

<div class="form-floating mb-3">
  <input type="number" class="form-control" id="floatingPassword" placeholder="Quantity" name="quantity" value="<%=rs.getInt(3)%>">
  <label for="floatingPassword">Quantity</label>
</div>
<div class="form-floating mb-3">
  <input type="number" class="form-control" id="floatingPassword" placeholder="Price" name="price" value="<%=rs.getInt(4)%>">
  <label for="floatingPassword">Price in rupees</label>
</div>
 <div class="form-floating mb-3">
	
	
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