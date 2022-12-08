
<%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>

<html>
<head>

	<%@include file="includes/head.jsp" %>
	    <script type="text/javascript">
        function preventBack() {
            window.history.forward(); 
        }
          
        setTimeout("preventBack()", 0);
          
        window.onunload = function () { null };
    </script>
	
</head>
<body>
	
	<%@include file="includes/header.jsp" %>
	
<% 	
	
	String msg=request.getParameter("msg");
      if("remove".equals(msg)){
    	  %>
    	  <div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Item has been removed!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>
<%
if("error".equals(msg)){
  %>
    	  <div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Something wrong</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>


<% 	
	
	String quantity_msg=request.getParameter("msg");
      if("inc".equals(quantity_msg)){
    	  %>
    	  <div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Item incremented Successfully!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>
<%
if("dec".equals(quantity_msg)){
  %>
    	  <div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Item decremented successfully</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
	  %>
<%
if("notPossibe".equals(quantity_msg)){
  %>
    	  <div class="alert alert-info alert-dismissible fade show" role="alert">
  <strong>Quantity is already one, You should have to remove</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
	  %>	  	
	
	
	
	<div class="bor">
		<hr>
	</div>
	<section class="cart">
		<div class="container">
		
		<div class="card cart-card">
  <h5 class="card-header">Review Cart</h5>
  <div class="card-body">
    <h5 class="card-title">Item Details</h5>
	
 <%
 String email=session.getAttribute("email").toString();

int total=0;
int customer_id=0;
Connection con;
String query;
Statement st;
int sno=0;
String process="Processing";
 
 
 try{
	 
 	int i=0;
 	
 	con=dbConnection.getConnection();
 	st=con.createStatement();
 	
 	ResultSet rs=st.executeQuery("Select * from customers where email='"+email+"'");
 	while(rs.next()){
 		customer_id=rs.getInt(1);
 		System.out.println(customer_id);
 	}
 	
 	ResultSet rs1=st.executeQuery("Select total from carts where customer_id="+customer_id+" and status is null");
 	while(rs1.next()){
 		total=total+rs1.getInt(1); 	
 }

 %>
	    
  <table class="table table-bordered">
                        <thead>
                            <tr>
                            	<th>Serial No</th>
                                <th>Product Name</th>
                                <th>Quantity</th>
                                <th>Unit Price</th>
                                <th>Sub Total</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        
<%

	ResultSet rs2;
	
	
	rs2=st.executeQuery("Select * from products p, carts t where p.product_id=t.product_id and t.customer_id="+customer_id+" and t.status is null");
	while(rs2.next()){
		sno=sno+1;
	%>
	  <tr>
          <td>
          	<%out.println(sno);%>
          </td>
           <td>
              <%=rs2.getString(2)%>
          </td>
          <td>
              <a class="btn" href="QuantitySet.jsp?id=<%=rs2.getInt(1)%>&quantity=decrement" >-</a><%=rs2.getInt(8)%><a class="btn" href="QuantitySet.jsp?id=<%=rs2.getInt(1)%>&quantity=increment" >+</a>
          </td>
          <td>
              Rs.<%=rs2.getInt(9)%>.00
          </td>
          <td>
              Rs.<%=rs2.getInt(10)%>.00
          </td>
          <td><a href="DeletefromCart.jsp?id=<%=rs2.getInt(6)%>">Remove</a> 
      </tr>

    
	<% }%>
      </tbody>
</table>
<% if(sno==0){%>
	
		<h2>No Items in the cart!</h2>
	
	<% }
}catch(Exception e){
	
	System.out.println(e);
}


%>
	
	 <div>
    <a href="Menu.jsp" class="btn btn-primary mb-3">Add more Items</a>
  </div>
	
    <h6 class="card-text mb-2">Total Price: Rs.<%out.println(total);%>.00</h6>
   <h6 class="card-text">Delivery Charges: Rs.100.00</h6>
       <div class="bor">
		<hr>
	</div>	
	
	<%
	if(total>0){
	total=total+100;
	}%>
	
	<h6 class="card-text">Total Bill: Rs.<%out.println(total);%>.00</h6>
	
	<div class="bor">
		<hr>
	</div>
	
     <div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
  <label class="form-check-label" for="flexRadioDefault1">
    Cash On Delivery <i class="fas fa-truck"></i>
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" disabled>
  <label class="form-check-label" for="flexRadioDefault2">
    Online Payment <i class="far fa-credit-card"></i>
  </label>
</div>
 <div class="form-floating mb-2  ">
                    <input type="number" class="form-control field" name="card" placeholder="card" disabled>
      <label for="floatingInput">Card Number</label>
</div>      
    <%if(total>0){ %>              
   <div>
    <a href="OrderConfirm.jsp?tot=<%=total %>" class="btn btn-primary">Confirm Order</a>
  </div>
  <%} %>
  <%if(total==0){ %>
  <div>
    <a href="Menu.jsp" class="btn btn-primary">Select Product</a>
  </div>
  <%} %>

</div>
</div>

</div>
</section>

	<%@include file="includes/footer.jsp" %>
</body>
</html>
