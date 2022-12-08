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

int id=Integer.parseInt(s_id);

Connection con;
String query;
PreparedStatement pst;
ResultSet rs;

try {
		con=dbConnection.getConnection();
		
		pst=con.prepareStatement("Delete from products where product_id=?");
		pst.setInt(1, id);
		
		pst.executeUpdate();
		
		response.sendRedirect("product.jsp?delete_msg=deleted");
		
	} catch (Exception e) {
		// TODO: handle exception
		
		System.out.print(e);
		response.sendRedirect("product.jsp?delete_msg=notDeleted");
		
	}

%>


</body>
</html>