

<html>
<head>
 <%@include file="../includes/head.jsp" %>
</head>
<body>
<%@include file="adminHeader.jsp" %>






<div class="container">
	<h1>Add Customer Detail</h1>
	
	
<form  method="post" action="AddNewCustomerAction.jsp">
  
            
                <div class="form-floating mb-1  col">
                    <input type="text" class="form-control" name="c_fname" placeholder="First Name" required>
                    <label for="floatingInput">First Name</label>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                      Your name must be start with alphabet and limit is of 20.
                    </div>
                  </div>
                   <div class="form-floating mb-1 mx-1 col">
                    <input type="text" class="form-control form-control-sm" name="c_lname" placeholder="Last Name" required>
                    <label for="floatingInput">Last Name</label>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                      Your name must be start with alphabet and limit is of 20.
                    </div>
                  </div>
	
	
	
                  <div class="form-floating mb-1">
                    <input type="text" class="form-control" name="email" placeholder="Email" required>
                    <label for="floatingPassword">Email</label>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                      Your email is invalid!.
                    </div>
                  </div>
                  <div class="form-floating mb-1">
                    <input type="text" class="form-control" name="uphone" placeholder="Phone" required>
                    <label for="floatingPassword">Contact Number</label>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                      Your name must be start with +92.
                    </div>
                    </div>
               
                <div class="form-floating mb-1  col">
                    <input type="text" class="form-control" name="house" placeholder="House" required>
                    <label for="floatingInput">House Number</label>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                      Your name must be start with alphabet and limit is of 20.
                    </div>
                  </div>
                  
                  <div class="col mx-1 my-1">
                  <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="district" required>
						<option selected>District</option>
						<option value="North">North</option>
						<option value="West">West</option>
						<option value="East">East</option>
						<option value="South">South</option>
				</select>

                  
	</div>
	
					 <div class="form-floating mb-1 col">
                    <input type="text" class="form-control form-control-sm" name="street" placeholder="Street" required>
                    <label for="floatingInput">Street</label>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                      Your name must be start with alphabet and limit is of 20.
                    </div>
                  </div>
                   <div class="form-floating mb-1">
                    <input type="password" class="form-control" name="upassword" placeholder="password" required>
                    <label for="floatingPassword">Password</label>
                  </div> 
               
                  <div class="form-floating mb-1">
                  <button id="submit" type="submit" class="btn btn-primary">Add Customer </button>
                  </div>
            	
            
            </form>
	
	
	
</div>



</body>
</html>