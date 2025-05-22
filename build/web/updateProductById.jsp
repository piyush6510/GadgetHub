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
  <body>
        <jsp:include page="header.jsp" />
    <div class="container mt-5 mb-5">
      <div class="row justify-content-center">
        <form action="#" class="col-md-4 myform">
          <div class="row mt-3 mb-3">
            <div class="form-group col-md-12">
              <label for="product_id"> Product Id</label>
              <input type="text" class="form-control" id="product_id">

            </div>
          </div>
          <div class="row mt-3">
            <div class="col-md-6">
             <button type="reset" class="btn btn-danger">Cancle</button>
            </div>
            <div class="col-md-6">
             <button type="reset" class="btn btn-primary">Submit</button>
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

