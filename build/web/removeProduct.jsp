<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Remove Product</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
      rel="stylesheet"
      crossorigin="anonymous"
    />
  </head>
  <body class="bg-light">

    <!-- Header with bottom margin -->
    <div class="mb-4">
      <jsp:include page="header.jsp" />
    </div>

    <!-- Form with top and bottom margin -->
    <div class="d-flex justify-content-center mb-12">
      <div class="card shadow w-100" style="max-width: 400px;">
        <div class="card-header bg-danger text-white text-center py-2">
          <h6 class="mb-0">Remove Product</h6>
        </div>
        <div class="card-body py-3">
          <form action="#">
            <div class="mb-3">
              <label for="product_id" class="form-label">Product ID</label>
              <input type="text" class="form-control" id="product_id" required />
            </div>
            <div class="row">
              <div class="col-6">
                <button type="reset" class="btn btn-outline-danger w-100">Cancel</button>
              </div>
              <div class="col-6">
                <button type="submit" class="btn btn-primary w-100">Remove</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!-- Footer with top margin -->
    <div class="mt-4">
      <jsp:include page="footer.jsp" />
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
