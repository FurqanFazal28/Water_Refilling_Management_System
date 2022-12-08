<!DOCTYPE html>
<html>
<head>
<%@include file="includes/head.jsp" %>
<link rel="stylesheet" href="css/signup.css">
</head>
<body>

<% String msg=request.getParameter("msg");
                    		if("done".equals(msg)){
                    			
 %>
<div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Successfully Updated!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<% }%>
<% 
	if("notexist".equals(msg)){
                    			
 %>
<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Given details is incorrect</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<% }%>

<% 
	if("invalid".equals(msg)){
                    			
 %>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Some Error!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<% }%>



<div class="card">
	<div class="row">
	<div class="col ">
		<img alt="" src="css/signup.jpg">
	</div>
	<div class="container col">
        
            <h1 class="mx-2">Forgot Password</h1>

            <form  action="forgetPasswordAction.jsp" method="post" >
                <div class="form-floating mb-3 my-2 ">
                    <input type="text" class="form-control field" name="uname" placeholder="Name" required>
                    <label for="floatingInput">Name</label>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                      Your name must be start with alphabet and limit is of 20.
                    </div>
                  </div>

                  <div class="form-floating mb-3">
                    <input type="text" class="form-control" name="uemail" placeholder="Email" required>
                    <label for="floatingPassword">Email Address</label>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                      Your email is invalid!.
                    </div>
                  </div>
                  
                  <div class="form-floating mb-3">
                    <input type="text" class="form-control" name="ucontact" placeholder="contact" required>
                    <label for="floatingPassword">Contact Number</label>
                  </div> 
                  
                  <div class="form-floating mb-3">
                    <input type="password" class="form-control" name="newpassword" placeholder="password" required>
                    <label for="floatingPassword">Enter New Password</label>
                  </div> 
               
                  <div class="form-floating mb-2">
                  <button id="submit" type="submit" class="btn btn-primary">Save </button>
                  </div>
                  <div class="form-floating mb-2">
                 <a href="SignIn.jsp" class="col-4"> &nbsp Go to the login</a>
                  </div>
        
            </form>
  	
    </div>
 
</div>
</div>



</body>
</html>