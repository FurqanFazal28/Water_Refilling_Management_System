 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>
 
 <%
 
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
int product_id=Integer.parseInt(id);
String incdec=request.getParameter("quantity");
 
int total=0;
int price=0;
int customer_id=0;
int quantity=0;
int final_total=0;

Connection con;
String query;
Statement st;

 
 try{
	 
 	int i=0;
 	
 	con=dbConnection.getConnection();
 	st=con.createStatement();
 	
 	ResultSet rs=st.executeQuery("Select * from customers where email='"+email+"'");
 	while(rs.next()){
 		customer_id=rs.getInt(1);
 		System.out.println(customer_id);
 	}
 	ResultSet rs1=st.executeQuery("Select * from carts where product_id="+product_id+" and customer_id="+customer_id+" and status is null");
 	while(rs1.next()){
 		total=rs1.getInt(5);
 		price=rs1.getInt(4);
 		quantity=rs1.getInt(3);
 	}
 	if(quantity==1 && incdec.equals("decrement")){
 		response.sendRedirect("cart.jsp?msg=notPossibe"); 
 		}
 	else if(quantity!=1 && incdec.equals("decrement")){
 		quantity--;
 		total=total-price; 
 		st.executeUpdate("Update carts set total="+total+",quantity="+quantity+" where product_id="+product_id+" and customer_id="+customer_id+" and status is null");
 		response.sendRedirect("cart.jsp?msg=dec"); 	
 	}
 	else if(quantity!=1 && incdec.equals("increment")){
 		quantity++;
 		total=total+price; 
 		st.executeUpdate("Update carts set total="+total+",quantity="+quantity+" where product_id="+product_id+" and customer_id="+customer_id+" and status is null");
 		response.sendRedirect("cart.jsp?msg=inc"); 	
 	}
 	else if(quantity==1 && incdec.equals("increment")){
 		quantity++;
 		total=total+price; 
 		st.executeUpdate("Update carts set total="+total+",quantity="+quantity+" where product_id="+product_id+" and customer_id="+customer_id+" and status is null");
 		response.sendRedirect("cart.jsp?msg=inc"); 	
 	}
 	
 	
 	
 }catch(Exception e){
	 System.out.println(e);
 }
 %>