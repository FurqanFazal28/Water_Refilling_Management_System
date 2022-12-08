 <%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
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


 <%
 String email=session.getAttribute("email").toString();
 String tot=request.getParameter("tot");
 int total=Integer.parseInt(tot);
 int z=0;
 
 
 int customer_id=0;
 Connection con;
 String query;
 Statement st;
 PreparedStatement pst;
 String Cash="Cash";
 String e_Status="available";
 String u_Status="unavailable";
 int del_details=0;
  
  
  try{
 	 
  	int i=0;
  	
  	con=dbConnection.getConnection();
  	st=con.createStatement();
  	
  	ResultSet rs=st.executeQuery("Select * from customers where email='"+email+"'");
  	while(rs.next()){
  		customer_id=rs.getInt(1);
  		System.out.println(customer_id);
  	}
  	
  	ResultSet rs1=st.executeQuery("Select * from carts where customer_id="+customer_id+" and status is null");
  	while(rs1.next()){
  		st.executeUpdate("Insert into transactions(transaction_type, total_bill, cart_id) values('"+Cash+"',"+total+","+rs1.getInt(1)+")");
  	
  	}
  	ResultSet rs2=st.executeQuery("select distinct(t.transaction_id) from transactions t, carts c where t.cart_id=c.cart_id and c.customer_id="+customer_id+" and status is null");
  	while(rs2.next()){
  		z=rs2.getInt(1);
  		st.executeUpdate("Insert into Payments(transaction_id, total_amount_received, customer_id) values("+rs2.getInt(1)+","+total+","+customer_id+")");	
  		 
  		break;
  	}
  	int y=0;
  	ResultSet rs3=st.executeQuery("Select * from employees where status='"+e_Status+"'");
  	while(rs3.next()){
  		y=1;
  		pst=con.prepareStatement("Insert into delivery(customer_id,transaction_id,delivery_man) values(?,?,?)");
  		pst.setInt(1, customer_id);
  		pst.setInt(2, z);
  		pst.setInt(3, rs3.getInt(1));
  		pst.executeQuery();
  		st.executeUpdate("Update employees set status='"+u_Status+"' where employee_id="+rs3.getInt(1)+"");
  		break;
  	}
  	if(y==0){
  		pst=con.prepareStatement("Insert into delivery(customer_id,transaction_id,delivery_man) values(?,?,?)");
  		pst.setInt(1, customer_id);
  		pst.setInt(2, z);
  		pst.setInt(3, 0);
  		pst.executeQuery();
  	} %>
  	 <div class="container">
  	<h1>Your Order has been submitted Successfuly and your Order id is <%=z%></h1> 
<%   	
  	ResultSet rs4=st.executeQuery("Select max(delivery_id) from delivery d, employees e where d.delivery_man=e.employee_id and customer_id= "+customer_id+"");
  	while(rs4.next()){ 
  	del_details=rs4.getInt(1);}
  	
  	ResultSet rs5=st.executeQuery("Select * from delivery d, employees e where d.delivery_man=e.employee_id and delivery_id= "+del_details+"");
  	while(rs5.next()){
  	%>
  		<h2>Delivery Details</h2>
  		<h3> delivery id: <%=rs5.getInt(1)%> </h3>
  		<h3> delivery Man: <%=rs5.getString(7)%> </h3>
  		<h3> delivery Contact: <%= rs5.getString(9)%> </h3>
  		<h3> delivery Date: <%=rs5.getString(5)%> </h3>
  	<% }
  	int qty=0;
  	int qty2=0;
  	int abc=0;
  	int r2;
  	ResultSet rs6=st.executeQuery("Select * from carts where customer_id="+customer_id+" and status is null");
  while(rs6.next()){
	  abc=rs6.getInt(2);
	  qty=rs6.getInt(3);
	  ResultSet rs7=st.executeQuery("Select * from products where product_id="+abc+"");
	  while(rs7.next()){
		  qty2=rs7.getInt(3);
		  qty2=qty2-qty;
		  r2=rs7.getInt(1);
		  st.executeUpdate("Update products set quantity="+qty2+" where product_id="+r2+"");
		  
	  }
  }
  }
  catch(Exception e){
	  System.out.println(e);

	  
  }
 
 %>

 
<div class="row my-2 mb-2 mx-4">     
  	   <div class="col">
  	    <a href="ContinueShopping.jsp?msg=continue" class="btn btn-primary btn-lg">Continue Shopping</a>
  	  </div>
  	 
  	 
  	  <div class="col mx-0">
  	    <a href="Logout.jsp?msg=logout" class="btn btn-primary btn-lg">Logout</a>
  	  </div>
 
</div>  
 </div>
 </body>
 </html>