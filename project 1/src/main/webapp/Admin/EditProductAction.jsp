<%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>

<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="adminHeader.jsp" %>


<%
String s_id=request.getParameter("id");
String name=request.getParameter("name");
String s_quantity=request.getParameter("quantity");
String s_price=request.getParameter("price");

int id=Integer.parseInt(s_id);
int quantity=Integer.parseInt(s_quantity);
int price=Integer.parseInt(s_price);

Connection con;
String query;
ResultSet rs;
Statement st;

try {
		con=dbConnection.getConnection();
		st=con.createStatement();
		st.executeUpdate("Update products set product_name='"+name+"', quantity="+quantity+",unit_price="+price+" where product_id="+id+"");
	
		
		response.sendRedirect("product.jsp?msg=updated");
		
		
	} catch (Exception e) {
		// TODO: handle exception
		
		System.out.print(e);
		response.sendRedirect("product.jsp?msg=notupdated");
		
	}

%>


</body>
</html>