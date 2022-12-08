 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>@>
<%

Connection con;
String query;
PreparedStatement pst;
ResultSet rs;


String fname=request.getParameter("c_fname");
String lname=request.getParameter("c_lname");
String email=request.getParameter("email");
String phone=request.getParameter("uphone");
String house=request.getParameter("house");
String district=request.getParameter("district");
String street=request.getParameter("street");
String pass=request.getParameter("upassword");
String pass2=request.getParameter("cpassword");


if(pass.equals(pass2)){
	try{
		
		con=dbConnection.getConnection(); 
		PreparedStatement ps=con.prepareStatement("insert into CUSTOMERS(FIRST_NAME,LAST_NAME,EMAIL,ID_PASSWORD,HOUSE_NUMBER,STREET_NAME,DISTRICT,CONTACT_NUMBER) values(?,?,?,?,?,?,?,?)");
		
	
		ps.setString(1, fname);
		ps.setString(2, lname);
		ps.setString(3, email);
		ps.setString(4, pass);
		ps.setString(5, house);
		ps.setString(6, street);
		ps.setString(7, district);
		ps.setString(8, phone);
		
		
		
		rs=ps.executeQuery();
		response.sendRedirect("signup.jsp?msg=valid");
		
		
	}catch(Exception e){
		System.out.println(e);
		//response.sendRedirect("signup.jsp?msg=invalid");
	}
}
else{
	response.sendRedirect("signup.jsp?msg=incorrect");
}






 %>