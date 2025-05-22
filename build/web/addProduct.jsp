<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Add Product - GadgetHub</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    />
  </head>
  <body class="bg-light">
       
      <jsp:include page="header.jsp"/>
    <div class="container py-5">
      <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
          <div class="card shadow">
            <div class="card-header bg-primary text-white text-center">
              <h4 class="mb-0">
                <i class="fa-solid fa-box-open me-2"></i>Add New Product
              </h4>
            </div>
            <div class="card-body">
              <form
                action="AddProductServlet"
                method="post"
                enctype="multipart/form-data"
              >
                <div class="mb-3">
                  <label for="product_name" class="form-label"
                    >Product Name</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="product_name"
                    name="productName"
                    required
                  />
                </div>

                <div class="mb-3">
                  <label for="product_type" class="form-label"
                    >Product Type</label
                  >
                  <select
                    class="form-select"
                    id="product_type"
                    name="productType"
                    required
                  >
                    <option selected disabled value="">Choose type</option>
                    <option value="mobile">Mobile</option>
                    <option value="tv">TV</option>
                    <option value="camera">Camera</option>
                    <option value="laptop">Laptop</option>
                  </select>
                </div>

                <div class="mb-3">
                  <label for="product_desc" class="form-label"
                    >Product Description</label
                  >
                  <textarea
                    class="form-control"
                    id="product_desc"
                    name="productDesc"
                    rows="3"
                    required
                  ></textarea>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-3">
                    <label for="unit_price" class="form-label"
                      >Unit Price</label
                    >
                    <input
                      type="number"
                      class="form-control"
                      id="unit_price"
                      name="unitPrice"
                      min="1"
                      required
                    />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="quantity" class="form-label">Quantity</label>
                    <input
                      type="number"
                      class="form-control"
                      id="quantity"
                      name="quantity"
                      min="1"
                      required
                    />
                  </div>
                </div>

                <div class="mb-3">
                  <label for="product_img" class="form-label"
                    >Product Image</label
                  >
                  <input
                    type="file"
                    class="form-control"
                    id="product_img"
                    name="productImage"
                    accept="image/*"
                    required
                  />
                </div>

                <div class="d-flex justify-content-between">
                  <button
                    type="reset"
                    class="btn btn-outline-secondary w-50 me-2"
                  >
                    <i class="fa-solid fa-rotate-left me-1"></i> Reset
                  </button>
                  <button type="submit" class="btn btn-primary w-50">
                    <i class="fa-solid fa-plus me-1"></i> Add Product
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
     <jsp:include page="footer.jsp"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

