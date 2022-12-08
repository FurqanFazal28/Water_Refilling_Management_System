 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>
        <html>

        <head>
            <%@include file="head.jsp" %>
        </head>

        <body>
	<%@include file="adminHeader.jsp" %>
         
         
         
         <%
String delete_msg=request.getParameter("delete_msg");
      if("deleted".equals(delete_msg)){
    	  %>
    	  <div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Product Added Successfully!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>
<%
if("notDeleted".equals(delete_msg)){
  %>
    	  <div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Error!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>
         
         
            <br>

            <div class="row">
          

                <div class="container">
                    <h3 class="text-center">Delivery Details</h3>
                    <hr>
                  
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Customer ID</th>
                                <th>Transaction ID</th>
                                <th>Delivery Man ID</th>
                                <th>Date Delivery </th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <% 
try{
	Connection con;
	String query;
	Statement st;
	ResultSet rs;
	
	con=dbConnection.getConnection();
	st=con.createStatement();
	rs=st.executeQuery("Select * from delivery");
	while(rs.next()){
	%>
	  <tr>
          <td>
              <%=rs.getInt(1)%>
          </td>
          <td>
              <%=rs.getInt(2)%>
          </td>
          <td>
              <%=rs.getInt(3)%>
          </td>
          <td>
              <%=rs.getInt(4)%>
          </td>
          <td>
              <%=rs.getString(5)%>
          </td>
          <td><a href="DeleteDelivery.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
      </tr>
	<% }
}catch(Exception e){
	
	System.out.println(e);
}


%>
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>