<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login | GadgetHub</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
      rel="stylesheet"
      crossorigin="anonymous"
    />
  </head>
  <body class="bg-light">

  <!-- Include header -->
  <jsp:include page="header.jsp" />

  <div class="container my-5"> <!-- Reduced spacing with my-5 -->
    <div class="row justify-content-center">
      <div class="col-md-6 col-lg-4">
        <div class="card shadow">
          <div class="card-header bg-primary text-white text-center">
            <h4 class="mb-0">Login to GadgetHub</h4>
          </div>
          <div class="card-body">
            <form action="LoginServlet" method="post">
              <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required />
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required />
              </div>
              <div class="mb-3">
                <label for="role" class="form-label">Login as</label>
                <select class="form-select" id="role" name="role" required>
                  <option selected disabled value="">Select role</option>
                  <option value="customer">Customer</option>
                  <option value="admin">Admin</option>
                </select>
              </div>
              <div class="d-grid">
                <button type="submit" class="btn btn-primary">Login</button>
              </div>
            </form>
          </div>
          <div class="card-footer text-center">
            <small>Don't have an account? <a href="register.jsp">Register</a></small>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Include footer -->
  <jsp:include page="footer.jsp" />

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>

</html>
