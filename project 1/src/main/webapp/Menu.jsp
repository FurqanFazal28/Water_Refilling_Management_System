 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>
 
<html>
<head>
	<%@include file="includes/head.jsp" %>
	<link rel="stylesheet" href="css/Menu.css">
</head>
<body>
	
	<%@include file="includes/header.jsp" %>
<% 	
	
	String msg=request.getParameter("msg");
      if("exist".equals(msg)){
    	  %>
    	  <div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Product Quantity Updated!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>
<%
if("added".equals(msg)){
  %>
    	  <div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Product Added to the Cart</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
if("invalid".equals(msg)){
	  %>
	  <div class="alert alert-danger alert-dismissible fade show" role="alert">
<strong>Error</strong> You should check in on some of those fields below.
<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
}
%>

	
	
	
	
	
	<div class="bor">
		<hr>
	</div>
	<div class="container">
	<div class="items">
		<h1>Items</h1>
	</div>
	
	<div class="searching">
	<form action="SearchProduct.jsp" method="post">
	<div class="form-floating mb-3">
  <input type="text" class="form-control mb-3" id="floatingInput" placeholder="search" name="search" required="required">
  <label for="floatingInput">Enter Name</label>
  <button type="submit" class="searchButton btn btn-primary btn-lg mb-3" ><i class="fas fa-search"> Search Product</i></button>
</div>
</form>
</div>
	
	<div class="card-group">
 <%
 
 try{
	 int i=1;
 	Connection con;
 	String query;
 	Statement st;
 	ResultSet rs;
 	
 	con=dbConnection.getConnection();
 	st=con.createStatement();
 	rs=st.executeQuery("Select * from products");
 	while(rs.next()){
 	%>
 	   <div class="card">
  	<div class="cardimg">
    <img src="css/card<%=i%>.png" class="" alt="...">
    </div>
    <div class="card-body">
      <h4 class="card-title"><%=rs.getString(2)%></h4>
      <h5>Rs.<%=rs.getInt(4)%>.00</h5>
      <p class="card-text"><small class="text-muted">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</small></p>
	  <a class="btn btn-primary btn-lg" href="AddtoCartAction.jsp?msg=<%=rs.getInt(1)%>">Add to Cart</a>
	
    </div>
    
  </div>
 	<% i++;
 	if(i==3)
 	{
 		i=1;
	}
 	}
 }catch(Exception e){
 	
 	System.out.println(e);
 }

 

 %> 
  	
</div>
<form action="cart.jsp" method="post">
<div class="menu-submission">
	<button id="submit" type="submit" class="btn btn-primary btn-lg">Go to Check Out</button>
</div>
</form>
</div>
	<%@include file="includes/footer.jsp" %>
</body>
</html>