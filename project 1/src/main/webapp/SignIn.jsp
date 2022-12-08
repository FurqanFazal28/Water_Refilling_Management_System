
<!DOCTYPE html>
<html>
<head>
<%@include file="includes/head.jsp" %>
<link rel="stylesheet" href="css/signup.css">
</head>
<body>

<%
String msg=request.getParameter("msg");
      if("notexist".equals(msg)){
    	  %>
    	  <div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Dont have account!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>
<%
if("invalid".equals(msg)){
  %>
    	  <div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Error!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>


<div class="card">
	<div class="row">
	<div class="col ">
		<img alt="" src="css/signup.jpg">
	</div>
	<div class="container col">
        
            <h1>Sign In</h1>

            <form  action="SigninAction.jsp" method="post" >
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
                    <input type="password" class="form-control" name="upassword" placeholder="password" required>
                    <label for="floatingPassword">Password</label>
                  </div> 
                  
               
                  <div class="form-floating mb-2">
                  <button id="submit" type="submit" class="btn btn-primary">Sign In </button>
                  </div>
                  <div class="form-floating mb-2">
                 <a href="signup.jsp" class="col-4"> &nbsp Create an account</a>
                  </div>
                  <div class="form-floating mb-2 mx-2">
                 <a href="forgetPassword.jsp" class="col-4"> &nbsp Forgot Password?</a>
                  </div>
            </form>
  	
    </div>
 
</div>
</div>



</body>
</html>