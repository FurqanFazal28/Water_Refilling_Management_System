<%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>
<%
String id=request.getParameter("id");
int cart_id=Integer.parseInt(id);

Connection con;
Statement st;
ResultSet rs;

try{
	con=dbConnection.getConnection();
	st=con.createStatement();
	st.executeUpdate("delete from carts where cart_id="+cart_id+" and status is null");
	response.sendRedirect("cart.jsp?msg=remove");
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("cart.jsp?msg=error");
}

%>