 <%@page import="database.dbConnection" %>   
 <%@page import="java.sql.*" %>
        <html>

        <head>
            <%@include file="head.jsp" %>
        </head>

        <body>
	<%@include file="adminHeader.jsp" %>
	
	<%
String msg=request.getParameter("msg");
      if("added".equals(msg)){
    	  %>
    	  <div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Product Added Successfully!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>
<%
if("notAdded".equals(msg)){
  %>
    	  <div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Error!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>


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

<%
String update_msg=request.getParameter("msg");
      if("updated".equals(update_msg)){
    	  %>
    	  <div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Product Added Successfully!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>
<%
if("notupdated".equals(update_msg)){
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
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Product Details</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="AddNewProduct.jsp" class="btn btn-primary">Add
     New product</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Product Name</th>
                                <th>Quantity</th>
                                <th>Unit Price</th>
                                <th>Date Edit</th>
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
	rs=st.executeQuery("Select * from products");
	while(rs.next()){
	%>
	  <tr>
          <td>
              <%=rs.getInt(1)%>
          </td>
          <td>
              <%=rs.getString(2)%>
          </td>
          <td>
              <%=rs.getInt(3)%>
          </td>
          <td>
              <%=rs.getString(4)%>
          </td>
           <td>
              <%=rs.getString(5)%>
          </td>
          <td><a href="editProduct.jsp?id=<%=rs.getInt(1)%>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="deleteProduct.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
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