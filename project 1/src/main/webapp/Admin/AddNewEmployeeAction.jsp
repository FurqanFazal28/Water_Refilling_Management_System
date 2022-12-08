<%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>

<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="adminHeader.jsp" %>


<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String contact=request.getParameter("contact");
String address=request.getParameter("address");
String status=request.getParameter("availibility");


Connection con;
String query;
PreparedStatement pst;
ResultSet rs;

try {
		con=dbConnection.getConnection();
		query="Insert into employees (first_name, last_name, contact_number, address, status)values(?,?,?,?,?)";
		
		pst= con.prepareStatement(query);
		pst.setString(1, fname);
		pst.setString(2, lname);
		pst.setString(3, contact);
		pst.setString(4, address);
		pst.setString(5, status);
		
		rs=pst.executeQuery();
		
		response.sendRedirect("employee.jsp?msg=added");
		
		
	} catch (Exception e) {
		// TODO: handle exception
		
		System.out.print(e);
		response.sendRedirect("employee.jsp?msg=notAdded");
		
	}

%>


</body>
</html>