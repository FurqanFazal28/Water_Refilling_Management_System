 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>
 
 <%
 String name=request.getParameter("uname");
 String email=request.getParameter("uemail");
 String contact=request.getParameter("ucontact");
 String newPass=request.getParameter("newpassword");
 
	  Connection con;
	  String query;
	  Statement st;
	  ResultSet rs;
	  int check=0;
	  
try {
			con=dbConnection.getConnection();
			st=con.createStatement();
			
			query="Select * from customers where email='"+email+"' and contact_number='"+contact+"'";
			rs=st.executeQuery(query);
			
			
			
			while(rs.next()) {
			
				check=1;
				st.executeUpdate("update customers set id_password='"+newPass+"' where email='"+email+"'");
				response.sendRedirect("forgetPassword.jsp?msg=done");
			}
			
			if(check==0){
				response.sendRedirect("forgetPassword.jsp?msg=notexist");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e);
			//response.sendRedirect("forgetPassword.jsp?msg=invalid");
			
		}
		
%>