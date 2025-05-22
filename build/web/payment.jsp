<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Payment | GadgetHub</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      crossorigin="anonymous"
    />
  </head>
  <body class="bg-light">
         <jsp:include page="header.jsp" />
    <div class="container py-5">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="card shadow-sm rounded">
            <div class="card-body">
              <div class="text-center mb-4">
                <img src="mobile.jpg" alt="Payment" height="80" />
                <h4 class="mt-3 text-primary">Payment Details</h4>
              </div>

              <form action="#">
                <div class="mb-3">
                  <label for="card_holder_name" class="form-label">Name on Card</label>
                  <input type="text" id="card_holder_name" class="form-control" required />
                </div>

                <div class="mb-3">
                  <label for="card_number" class="form-label">Card Number</label>
                  <input type="text" id="card_number" class="form-control" placeholder="1234-5678-9012-3456" required />
                </div>

                <div class="row">
                  <div class="col-md-6 mb-3">
                    <label for="expiry_month" class="form-label">Expiry Month</label>
                    <input type="number" id="expiry_month" class="form-control" min="1" max="12" placeholder="MM" required />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="expiry_year" class="form-label">Expiry Year</label>
                    <input type="number" id="expiry_year" class="form-control" placeholder="YYYY" required />
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-3">
                    <label for="cvv" class="form-label">CVV</label>
                    <input type="password" id="cvv" class="form-control" maxlength="4" required />
                  </div>
                  <div class="col-md-6 d-flex align-items-end mb-3">
                    <button type="submit" class="btn btn-warning w-100">Pay ?20,000</button>
                  </div>
                </div>
              </form>
            </div>
            <div class="card-footer text-center text-muted small">
              Secure payment powered by GadgetHub
            </div>
          </div>
        </div>
      </div>
    </div>
        <jsp:include page="footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
