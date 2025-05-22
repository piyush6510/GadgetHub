<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Contact Us - GadgetHub</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <div class="container-fluid bg-primary text-white py-5">
      <div class="container">
        <h2 class="text-center mb-2">Contact Us</h2>
        <p class="text-center mb-4">We Love Our Fans!</p>
        <div class="row">
          <!-- Contact Info -->
          <div class="col-md-4 mb-4">
            <p><i class="fa-solid fa-phone me-2"></i>Phone: +91 123456789</p>
            <p>
              <i class="fa-solid fa-envelope me-2"></i>Email:
              piyushpatil45993@gmail.com
            </p>
            <p>
              <i class="fa-solid fa-location-dot me-2"></i>Postal Code: 460020
            </p>
          </div>

          <!-- Contact Form -->
          <div class="col-md-8">
            <form action="#">
              <div class="row">
                <div class="col-sm-6 mb-3">
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Name"
                    required
                  />
                </div>
                <div class="col-sm-6 mb-3">
                  <input
                    type="email"
                    class="form-control"
                    placeholder="Email"
                    required
                  />
                </div>
              </div>
              <div class="mb-3">
                <textarea
                  class="form-control"
                  rows="5"
                  placeholder="Your Message"
                  required
                ></textarea>
              </div>
              <div class="text-end">
                <button type="submit" class="btn btn-warning fw-bold">
                  Send <i class="fa-solid fa-paper-plane ms-1"></i>
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
