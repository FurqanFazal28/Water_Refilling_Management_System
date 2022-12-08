 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>

 <%
 
 String email=session.getAttribute("email").toString();
 String id=request.getParameter("msg");
 int product_id=Integer.parseInt(id);

 int quantity=1;
 int product_total=0;
 int product_price=0;
 int cart_total=0;
 int customer_id=0;
 
 try{
	 int i=0;
 	Connection con;
 	String query;
 	Statement st;
 	ResultSet rs1;
 	
 	con=dbConnection.getConnection();
 	st=con.createStatement();
 	
 	ResultSet rs=st.executeQuery("Select * from customers where email='"+email+"'");
 	while(rs.next()){
 		customer_id=rs.getInt(1);
 	}
 	
 	
 	
 	rs1=st.executeQuery("Select * from products where product_id="+product_id+"");
 	while(rs1.next()){
 		product_price=rs1.getInt(4);
 		product_total=product_total+product_price;
 	}
 	
 	ResultSet rs2=st.executeQuery("Select * from carts where product_id="+product_id+" and customer_id="+customer_id+" and status is null");
 	while(rs2.next()){
 		cart_total=rs2.getInt(5);
 		cart_total=cart_total+product_total;
 		quantity=quantity+1;
 		i=1;
 	}
 	if(i==1){
 		st.executeUpdate("update carts set total="+cart_total+", quantity="+quantity+" where product_id="+product_id+" and customer_id="+customer_id+" and status is null");
 		response.sendRedirect("Menu.jsp?msg=exist");
 	}
 	if(i==0){
 		cart_total=product_price;
 		PreparedStatement pst= con.prepareStatement("Insert into carts(product_id,customer_id,quantity,price,total) values(?,?,?,?,?)");
 		pst.setInt(1,product_id);
 		pst.setInt(2,customer_id);
 		pst.setInt(3,quantity);
 		pst.setInt(4,product_price);
 		pst.setInt(5,cart_total);
 		pst.executeQuery();
 		response.sendRedirect("Menu.jsp?msg=added");
 	}
 	
 	
 }catch(Exception e){
 		System.out.println(e);
 		response.sendRedirect("Menu.jsp?msg=invalid");
 	}
 
 
 
 
 %>