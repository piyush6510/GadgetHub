<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bootstrap demo</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="style.css" />
  </head>
  <body
      <jsp:include page="header.jsp" />
    <div class="container mt-5 mb-5">
      <div class="row justify-content-center">
        <form action="#" class="col-md-6 myform">
          <div class="row">
            <div class="form-group col-md-12">
              <img src="mobile.jpg" alt="" height="100px" />
              <h2 class="text-primary">Product Update Form</h2>
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-md-6 form-group">
              <label for="product_name">Product Name</label>
              <input type="text" class="form-control" id="product_name" />
            </div>

            <div class="col-md-6 form-group">
              <label for="product_type">Product Types</label>
              <select name="" id="product_name" class="form-control">
                <option value="tv">TV</option>
                <option value="Mobile">Mobile</option>
                <option value="camera">Camera</option>
                <option value="tablet">Tablet</option>
              </select>
            </div>
          </div>
          <div class="form-group mb-3">
            <label for="product_desc"> Product Discription</label>
            <textarea name="" id="product_desc" class="form-control"></textarea>
          </div>
          <div class="row mt-3">
            <div class="col-md-6 form-group">
              <label for="product_name">Unit Price </label>
              <input
                type="number"
                class="form-control"
                placeholder="Enter Product Unit"
                id="product_name"
              />
            </div>

            <div class="col-md-6 form-group">
              <label for="Quantity">Quantity </label>
              <input
                type="number"
                class="form-control"
                placeholder="Enter Product Quantity"
                id="Quantity"
              />
            </div>
          </div>

          <div class="row text-center mt-3 mb-3">
            <div class="col-md-6">
              <button type="reset" class="btn btn-danger">Reset</button>
            </div>
            <div class="col-md-6">
              <button type="submit" class="btn btn-primary">Update</button>
            </div>
          </div>
        </form>
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
