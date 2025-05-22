<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Registration Form</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
      rel="stylesheet"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <jsp:include page="header.jsp" />

    <div class="container mt-5 mb-5"> <!-- Added spacing here -->
      <div class="row justify-content-center">
        <form action="#" class="col-md-8 myform">
          <div class="text-center mb-4">
            <h2 class="text-primary">Registration Form</h2>
          </div>

          <div class="row mb-3">
            <div class="col-md-6">
              <label for="name" class="form-label">Name</label>
              <input type="text" id="name" class="form-control" required />
            </div>
            <div class="col-md-6">
              <label for="email" class="form-label">Email</label>
              <input type="email" id="email" class="form-control" required />
            </div>
          </div>

          <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <textarea
              id="address"
              class="form-control"
              rows="3"
              required
            ></textarea>
          </div>

          <div class="row mb-3">
            <div class="col-md-6">
              <label for="mobile" class="form-label">Mobile</label>
              <input type="tel" id="mobile" class="form-control" required />
            </div>
            <div class="col-md-6">
              <label for="pincode" class="form-label">Pincode</label>
              <input type="number" id="pincode" class="form-control" required />
            </div>
          </div>

          <div class="row mb-3">
            <div class="col-md-6">
              <label for="password" class="form-label">Password</label>
              <input
                type="password"
                id="password"
                class="form-control"
                required
              />
            </div>
            <div class="col-md-6">
              <label for="confirmPassword" class="form-label"
                >Confirm Password</label
              >
              <input
                type="password"
                id="confirmPassword"
                class="form-control"
                required
              />
            </div>
          </div>

          <div class="row text-center">
            <div class="col-md-6 mb-2">
              <button type="reset" class="btn btn-danger w-100">Reset</button>
            </div>
            <div class="col-md-6">
              <button type="submit" class="btn btn-primary w-100">
                Register
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>

    <jsp:include page="footer.jsp" />

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
