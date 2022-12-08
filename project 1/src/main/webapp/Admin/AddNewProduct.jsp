 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>

<html>
<head>
 <%@include file="head.jsp" %>
</head>
<body>
<%@include file="adminHeader.jsp" %>




<%
int id=1001;
Connection con;
String query;
Statement st;
ResultSet rs;

try{
	con=dbConnection.getConnection();
	st=con.createStatement();
	rs=st.executeQuery("Select max(product_id) from products");
	while(rs.next()){
		id=rs.getInt(1);
		id=id+1;
	}
	
	
}catch(Exception e){
	
}


%>

<div class="container">
	<h1>Add Products Detail</h1>
	<h3>Product Id is <%out.println(id);%></h3>
	
<form action="AddNewProductAction.jsp" method="post">
<input type="hidden" name="id" value=<%out.println(id);%> required>	
	<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" placeholder="Product Name" name="name" required>
  <label for="floatingInput">Product Name</label>
</div>
<div class="form-floating mb-3">
  <input type="number" class="form-control" id="floatingPassword" placeholder="Quantity" name="quantity" required>
  <label for="floatingPassword">Quantity</label>
</div>
<div class="form-floating mb-3">
  <input type="number" class="form-control" id="floatingPassword" placeholder="Price" name="price" required>
  <label for="floatingPassword">Price in rupees</label>
</div>
 <div class="form-floating mb-3">

<button type="submit" class="btn btn-primary mb-3">Add product</button>
                    </div>


</form>
	
	
	
</div>



</body>
</html>