<%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>
 
 <%
 String email=session.getAttribute("email").toString();
 String msg=request.getParameter("msg");
 
 int customer_id=0;
 Connection con;
 String query;
 Statement st;
 PreparedStatement pst;
 String Status="Processing";
  
  
  try{
  	
  	con=dbConnection.getConnection();
  	st=con.createStatement();
  	
  	ResultSet rs=st.executeQuery("Select * from customers where email='"+email+"'");
  	while(rs.next()){
  		customer_id=rs.getInt(1);
  		System.out.println(customer_id);
  	}

  		pst=con.prepareStatement("Update carts set Status =? where customer_id=? and status is null");
  		pst.setString(1, Status);
  		pst.setInt(2, customer_id);
  		pst.executeUpdate();
  		
  		if("logout".equals(msg)){
  			response.sendRedirect("Logout.jsp");
  		}
  		if("continue".equals(msg)){
  			response.sendRedirect("Menu.jsp");
  		}
  		
  		
  	
  }
  catch(Exception e){
	  System.out.println(e);
  }
 
 %>