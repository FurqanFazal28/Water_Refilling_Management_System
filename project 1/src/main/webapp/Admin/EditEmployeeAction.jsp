<%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>

<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="adminHeader.jsp" %>


<%
String e_id=request.getParameter("id");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String contact=request.getParameter("contact");
String address=request.getParameter("address");
String status=request.getParameter("availibility");

int id=Integer.parseInt(e_id);

Connection con;
String query;
Statement st;
ResultSet rs;

try {
		con=dbConnection.getConnection();
		
		st= con.createStatement();
		st.executeUpdate("Update employees set first_name='"+fname+"',last_name='"+lname+"',contact_number='"+contact+"',address='"+address+"',status='"+status+"' where employee_id="+id+"");
		response.sendRedirect("employee.jsp?msg=updated");
		
	} catch (Exception e) {
		// TODO: handle exception
		
		System.out.print(e);
		response.sendRedirect("employee.jsp?msg=notUpdated");
		
	}

%>


</body>
</html>