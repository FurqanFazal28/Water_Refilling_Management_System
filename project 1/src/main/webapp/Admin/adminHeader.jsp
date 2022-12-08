
<%String email=session.getAttribute("email").toString(); %>
<nav class="navbar">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
    <img src="css/logo.png" alt="Logo" width="30" height="30" class="d-inline-block align-text-top">
      Ocean Filter
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel"><u>DashBoard</u></h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="../index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="Admin.jsp">DashBoard</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="employee.jsp">Employee Details</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="customer.jsp">Customer Details</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="delivery.jsp">Delivery Details</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="product.jsp">Product Details</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="payment.jsp">Payment Details</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="../Logout.jsp">Logout</a>
          </li>
          
        </ul>
      </div>
    </div>
  </div>
</nav>

