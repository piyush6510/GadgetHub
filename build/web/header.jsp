<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>GadgetHub</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
      integrity="sha512-X+xVwSqaNq6wM5RQIR5hv5ivAHBf6b+Hwht4vGC9zr3TCMV6k4U8Q1U+a+Ue4Y1Ls3iYOe5YKiT2YzI3Fo+YAw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <!-- GUEST NAVBAR -->
    <div id="navbar-guest">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">GadgetHub</a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#guestNav"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="guestNav">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  data-bs-toggle="dropdown"
                  >Category</a
                >
                <ul class="dropdown-menu dropdown-menu-dark">
                  <li><a class="dropdown-item" href="#">Mobile</a></li>
                  <li><a class="dropdown-item" href="#">TV</a></li>
                  <li><a class="dropdown-item" href="#">Speaker</a></li>
                  <li><a class="dropdown-item" href="#">Cooler</a></li>
                  <li><a class="dropdown-item" href="#">Ipad</a></li>
                  <li><a class="dropdown-item" href="#">Pixel</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Products</a>
              </li>
              <li class="nav-item"><a class="nav-link" href="#">Login</a></li>
              <li class="nav-item">
                <a class="nav-link" href="#">Register</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>

    <!-- ADMIN NAVBAR -->
    <div id="navbar-admin" style="display: none">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">GadgetHub</a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#adminNav"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="adminNav">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link" href="#">Products</a>
              </li>
              <li class="nav-item"><a class="nav-link" href="#">Stocks</a></li>
              <li class="nav-item"><a class="nav-link" href="#">Shipped</a></li>
              <li class="nav-item"><a class="nav-link" href="#">Orders</a></li>
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  data-bs-toggle="dropdown"
                  >Update Items</a
                >
                <ul class="dropdown-menu dropdown-menu-dark">
                  <li><a class="dropdown-item" href="#">Add Products</a></li>
                  <li><a class="dropdown-item" href="#">Remove Products</a></li>
                  <li><a class="dropdown-item" href="#">Update Products</a></li>
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="#">Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>

    <!-- CUSTOMER NAVBAR -->
    <div id="navbar-customer" style="display: none">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">GadgetHub</a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#customerNav"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="customerNav">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  data-bs-toggle="dropdown"
                  >Category</a
                >
                <ul class="dropdown-menu dropdown-menu-dark">
                  <li><a class="dropdown-item" href="#">Mobile</a></li>
                  <li><a class="dropdown-item" href="#">TV</a></li>
                  <li><a class="dropdown-item" href="#">Speaker</a></li>
                  <li><a class="dropdown-item" href="#">Cooler</a></li>
                  <li><a class="dropdown-item" href="#">Ipad</a></li>
                  <li><a class="dropdown-item" href="#">Pixel</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Products</a>
              </li>
              <li class="nav-item"><a class="nav-link" href="#">Cart</a></li>
              <li class="nav-item">
                <a class="nav-link" href="#"
                  ><i class="fa fa-cart-shopping"></i
                ></a>
              </li>
              <li class="nav-item"><a class="nav-link" href="#">Orders</a></li>
              <li class="nav-item"><a class="nav-link" href="#">Profile</a></li>
              <li class="nav-item"><a class="nav-link" href="#">Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>

    <!-- Searchbar Start -->
    <div class="container-fluid bg-warning text-center p-3">
      <h2>GadgetHub</h2>
      <p>We specialize in Electronics</p>
      <form action="#">
        <div class="input-group">
          <input
            type="text"
            name=""
            id=""
            class="form-control"
            placeholder="Search Items"
          />
          <input type="submit" class="btn btn-primary" />
        </div>
      </form>
    </div>

    <!-- BOOTSTRAP JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
