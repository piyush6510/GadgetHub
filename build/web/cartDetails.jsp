<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cart Items</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
      img.product-img {
        width: 100px;
        height: 100px;
        object-fit: cover;
      }
    </style>
  </head>
  <body class="bg-light">
      <jsp:include page="header.jsp"/>
    <div class="container py-4">
      <h3 class="text-center text-primary mb-4">Cart Items</h3>
      
      <div class="table-responsive bg-white p-3 rounded shadow-sm">
        <table class="table table-hover align-middle">
          <thead class="table-light">
            <tr>
              <th>Product Image</th>
              <th>Product Name</th>
              <th>Price (?)</th>
              <th>Qty</th>
              <th class="text-center">Add</th>
              <th class="text-center">Remove</th>
              <th>Amount (?)</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><img src="mobile.jpg" alt="iPhone" class="product-img img-thumbnail"></td>
              <td>IPhone</td>
              <td>50,000</td>
              <td>
                <form action="#">
                  <input type="number" class="form-control form-control-sm" min="0" value="1">
                </form>
              </td>
              <td class="text-center">
                <a href="#" class="btn btn-sm btn-success"><i class="fa-solid fa-plus"></i></a>
              </td>
              <td class="text-center">
                <a href="#" class="btn btn-sm btn-danger"><i class="fa-solid fa-minus"></i></a>
              </td>
              <td>50,000</td>
            </tr>
            <tr>
              <td colspan="6" class="text-end fw-bold">Total Amount in Rupees</td>
              <td class="fw-bold">50,000</td>
            </tr>
            <tr>
              <td colspan="4" class="text-center">
                <form action="#">
                  <button type="submit" class="btn btn-outline-dark w-75">Cancel</button>
                </form>
              </td>
              <td colspan="3" class="text-center">
                <form action="#">
                  <button type="submit" class="btn btn-warning w-75">Pay Now</button>
                </form>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
      <jsp:include page="footer.jsp"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>

    
