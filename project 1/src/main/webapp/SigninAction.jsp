 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>
 
 <%
 String name=request.getParameter("uname");
 String email=request.getParameter("uemail");
  String pass=request.getParameter("upassword");
  
  
  if("admin@gmail.com".equals(email)&&"fast".equals(pass)){
  session.setAttribute("email", email);
  response.sendRedirect("Admin/Admin.jsp");
  }
  else{
	  Connection con;
	  String query;
	  PreparedStatement pst;
	  ResultSet rs;
	  int i=0;
	  
	  try {
			con=dbConnection.getConnection();
			query="Select * from customers where email=? and id_password=?";
			
			pst= con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, pass);
			rs=pst.executeQuery();
			
			while(rs.next()) {
			
				i=1;
				request.getSession().setAttribute("email", email);
				response.sendRedirect("Menu.jsp");
			}
			
			if(i==0){
				response.sendRedirect("SignIn.jsp?msg=notexist");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			//response.sendRedirect("SignIn.jsp?msg=invalid");
			System.out.print(e);
			
			
		}
		
  }
  
  %>