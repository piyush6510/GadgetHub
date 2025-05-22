<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Transaction Table</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body class="bg-light py-4">
            <jsp:include page="header.jsp" />
    <div class="container-fluid mt-5 mb-5">
      <div class="table-responsive">
        <table class="table table-hover table-bordered align-middle">
          <thead class="table-dark text-center">
            <tr>
              <th>Transaction ID</th>
              <th>Product ID</th>
              <th>User Email</th>
              <th>Address</th>
              <th>Quantity</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody class="text-center">

            <!-- If records exist -->
            <tr>
              <td>123456</td>
              <td><a href="#">123456</a></td>
              <td>PiyushPatil@gmail.com</td>
              <td>Pipani Patrol Pump</td>
              <td>5</td>
              <td>
                <span class="badge bg-primary">Ready To Ship</span>
              </td>
              <td>
                <a href="#" class="btn btn-success btn-sm">Ship Now</a>
              </td>
            </tr>

            <!-- If NO records exist -->
            <!-- Uncomment this block only if no data is available -->
           
            <tr>
              <td colspan="7" class="text-center text-muted">
                No items available
              </td>
            </tr>
           
          </tbody>
        </table>
      </div>
    </div>
        <jsp:include page="footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
