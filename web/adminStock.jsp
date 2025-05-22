<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Product Stock</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
  </head>
  <body class="bg-light">
      <jsp:include page="header.jsp"/>
    <div class="container py-4">
      <h3 class="text-primary text-center mb-4">Product Stock</h3>
      
      <div class="table-responsive shadow-sm bg-white rounded p-3">
        <table class="table table-hover align-middle">
          <thead class="table-light">
            <tr>
              <th scope="col">Product Image</th>
              <th scope="col">Product ID</th>
              <th scope="col">Product Name</th>
              <th scope="col">Price (?)</th>
              <th scope="col">Sold Qty</th>
              <th scope="col">Stock Qty</th>
              <th scope="col" colspan="2" class="text-center">Action</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                <img src="mobile.jpg" alt="IPhone Image" class="img-thumbnail" style="width: 80px; height: 80px; object-fit: cover;" />
              </td>
              <td>12345</td>
              <td>IPhone</td>
              <td>?50,000</td>
              <td>10</td>
              <td>20</td>
              <td class="text-center">
                <button type="button" class="btn btn-sm btn-primary">Update</button>
              </td>
              <td class="text-center">
                <button type="button" class="btn btn-sm btn-danger">Remove</button>
              </td>
            </tr>
            <!-- Uncomment if there are no products -->
            <!-- <tr>
              <td colspan="8" class="text-center text-muted">No items available</td>
            </tr> -->
          </tbody>
        </table>
      </div>
    </div>
    <jsp:include page="footer.jsp"/>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
