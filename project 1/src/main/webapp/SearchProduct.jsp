<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>
 
<html>
<head>
	<%@include file="includes/head.jsp" %>
	<link rel="stylesheet" href="css/Menu.css">
</head>
<body>
	
	<%@include file="includes/header.jsp" %>
	<div class="bor">
		<hr>
	</div>
	<div class="container">
	<div class="items">
		<h1>Items</h1>
	</div>

	
	<div class="card-group">
 <%
 
 try{
	 String search=request.getParameter("search");
	 int check=0;
	 int i=1;
 	Connection con;
 	String query;
 	Statement st;
 	ResultSet rs;
 	
 	con=dbConnection.getConnection();
 	st=con.createStatement();
 	rs=st.executeQuery("Select * from products where product_name like '%"+search+"%'");
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
 	check=1;
 	}
 	if(check==0){
 		%>
 		<h1>No Item Found!</h1>
 		
 		<%}
 	
 }catch(Exception e){
 	
 	System.out.println(e);
 }

 

 %> 
  	
</div>
<div class="menu-submission">
	<button id="submit" type="submit" class="btn btn-primary btn-lg">Go to Check Out</button>
</div>
</div>
	<%@include file="includes/footer.jsp" %>
</body>
</html>