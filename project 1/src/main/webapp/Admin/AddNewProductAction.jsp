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
PreparedStatement pst;
ResultSet rs;

try {
		con=dbConnection.getConnection();
		query="Insert into products (product_id, product_name, quantity, unit_price)values(?,?,?,?)";
		
		pst= con.prepareStatement(query);
		pst.setInt(1, id);
		pst.setString(2, name);
		pst.setInt(3, quantity);
		pst.setInt(4, price);
		rs=pst.executeQuery();
		
		response.sendRedirect("product.jsp?msg=added");
		
		
	} catch (Exception e) {
		// TODO: handle exception
		
		System.out.print(e);
		response.sendRedirect("product.jsp?msg=notAdded");
		
	}

%>


</body>
</html>