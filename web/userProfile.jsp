<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>User Profile</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
      crossorigin="anonymous"
    />
  </head>
  <body class="bg-light">
      <jsp:include page="header.jsp" />
    <div class="container py-5">
      <!-- Breadcrumb -->
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-white p-3 rounded shadow-sm">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">Library</li>
        </ol>
      </nav>

      <div class="row mt-4">
        <!-- Sidebar -->
        <div class="col-lg-4 mb-4">
          <div class="card shadow-sm text-center">
            <div class="card-body">
              <img
                src="mobile.jpg"
                alt="User Image"
                class="img-thumbnail mb-3"
                style="width: 120px; height: 120px; object-fit: cover;"
              />
              <h5 class="card-title mb-0">Hello, User!</h5>
              <small class="text-muted">Welcome back</small>
            </div>
          </div>

          <div class="card mt-4 shadow-sm">
            <div class="card-body text-center">
              <h5 class="mb-0">My Profile</h5>
            </div>
          </div>
        </div>

        <!-- Profile Info -->
        <div class="col-lg-8">
          <div class="card shadow-sm">
            <div class="card-header bg-primary text-white">
              <h5 class="mb-0">User Details</h5>
            </div>
            <div class="card-body">
              <dl class="row mb-0">
                <dt class="col-sm-4">Full Name</dt>
                <dd class="col-sm-8">Piyush Patil</dd>

                <dt class="col-sm-4">Email</dt>
                <dd class="col-sm-8">Piyush@gmail.com</dd>

                <dt class="col-sm-4">Address</dt>
                <dd class="col-sm-8">Piplani Patrol Pump, Bhopal</dd>

                <dt class="col-sm-4">Pincode</dt>
                <dd class="col-sm-8">450445</dd>

                <dt class="col-sm-4">Contact No.</dt>
                <dd class="col-sm-8">663246003</dd>
              </dl>
            </div>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
      crossorigin="anonymous"
    ></script>
  </body>
</html>