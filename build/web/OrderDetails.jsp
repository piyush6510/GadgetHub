<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Order Details | GadgetHub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
  </head>
  <body class="bg-body-tertiary">
        <jsp:include page="header.jsp" />
    <div class="container py-5">
      <div class="text-center mb-4">
        <h2 class="fw-bold text-primary">? Order Details</h2>
        <p class="text-muted">Track your recent product orders below</p>
      </div>

      <div class="table-responsive shadow-sm rounded bg-white">
        <table class="table table-hover align-middle mb-0">
          <thead class="table-light text-center">
            <tr>
              <th>Product</th>
              <th>Name</th>
              <th>Order ID</th>
              <th>Quantity</th>
              <th>Price</th>
              <th>Date & Time</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody class="text-center">
            <tr>
              <td>
                <img src="mobile.jfif" alt="iPhone" class="rounded" style="width: 70px; height: 70px; object-fit: cover;">
              </td>
              <td class="fw-medium">iPhone 14 Pro</td>
              <td>#123456789</td>
              <td>2</td>
              <td>?1,50,000</td>
              <td>20 Oct 2024<br><small class="text-muted">11:00 AM</small></td>
              <td>
                <span class="badge bg-success-subtle text-success border border-success-subtle px-3 py-2">Shipped</span>
              </td>
            </tr>
            <!-- Add more rows as needed -->
          </tbody>
        </table>
      </div>
    </div>
      <jsp:include page="footer.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
  </body>
</html>
