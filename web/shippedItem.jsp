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
              <th>Transaction</th>
              <th>Product ID</th>
              <th>Username</th>
              <th>Address</th>
              <th>Quantity</th>
              <th>Amount</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody class="text-center">
            <!-- Example record -->
            <tr>
              <td>123456</td>
              <td><a href="#">123456</a></td>
              <td>Piyush Patil</td>
              <td>Pipani Patrol Pump</td>
              <td>5</td>
              <td> Rs 10,000</td>
              <td class="text-success fw-semibold">Shopped</td>
            </tr>

            <!-- Example of 'No Item' row, shown when no records -->
           
            <tr>
              <td colspan="7" class="text-center text-muted">No items available</td>
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

