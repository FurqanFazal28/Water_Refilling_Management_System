<!DOCTYPE html>
<html>
<head>
<%@include file="includes/head.jsp" %>
<link rel="stylesheet" href="css/signup.css">
</head>
<body> 


<% String msg=request.getParameter("msg");
                    		if("valid".equals(msg)){
                    			
 %>
<div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Successfully Registered!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<% }%>
<% 
	if("invalid".equals(msg)){
                    			
 %>
<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Invalid!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<% }%>

<% 
	if("incorrect".equals(msg)){
                    			
 %>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Password Not Match!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<% }%>





<div class="card">
	<div class="row">
	<div class="col ">
		<img alt="" src="css/signup.jpg">
	</div>
	<div class="container col">
        
            <h1>Sign Up</h1>

            <form  method="post" action="SignupAction.jsp">
  <div class="row">
            
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
               <div class="row">
                <div class="form-floating mb-1  col">
                    <input type="text" class="form-control" name="house" placeholder="House" required>
                    <label for="floatingInput">House Number</label>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                      Your name must be start with alphabet and limit is of 20.
                    </div>
                  </div>
                  
                  <div class="col mx-1 my-1">
                  <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="district">
						<option selected>District</option>
						<option value="North">North</option>
						<option value="West">West</option>
						<option value="East">East</option>
						<option value="South">South</option>
				</select>
    
    
  </div>
                  
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
                    <input type="password" class="form-control" name="cpassword" placeholder="cpassword" required>
                    <label for="floatingPassword">Confirm Password</label>
                    </div>
               
                  <div class="form-floating mb-1">
                  <button id="submit" type="submit" class="btn btn-primary">Register </button>
                  </div>
                  <div class="form-floating mb-1">
                 <a href="/project_1/SignIn.jsp" class="col-4">Already have account?</a>
                  </div>
            	
            
            </form>
  	
    </div>
 
</div>
</div>






    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>