

<html>
<head>
 <%@include file="../includes/head.jsp" %>
</head>
<body>
<%@include file="adminHeader.jsp" %>






<div class="container">
	<h1>Add Employee Detail</h1>
	
	
<form action="AddNewEmployeeAction.jsp" method="post">

	<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" placeholder="Product Name" name="fname" required>
  <label for="floatingInput">First Name</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" placeholder="Product Name" name="lname" required>
  <label for="floatingInput">Last Name</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingPassword" placeholder="Quantity" name="contact" required>
  <label for="floatingPassword">Contact Number</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingPassword" placeholder="Price" name="address" required>
  <label for="floatingPassword">Address</label>
</div>
<div class="form-floating mb-3">
  <select class="form-select form-select-lg" aria-label=".form-select-lg example" name="availibility" required>
						<option selected>Status</option>
						<option value="unavailable">Unavailable</option>
						<option value="available">Available</option>
						
</select>
</div>

 
 <div class="form-floating mb-3">

<button type="submit" class="btn btn-primary mb-3">Add Employee</button>
                    </div>


</form>
	
	
	
</div>



</body>
</html>