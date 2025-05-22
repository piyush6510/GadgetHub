package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class unShippedItem_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("    <title>Transaction Table</title>\n");
      out.write("    <link\n");
      out.write("      href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css\"\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("    />\n");
      out.write("  </head>\n");
      out.write("  <body class=\"bg-light py-4\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("    <div class=\"container-fluid mt-5 mb-5\">\n");
      out.write("      <div class=\"table-responsive\">\n");
      out.write("        <table class=\"table table-hover table-bordered align-middle\">\n");
      out.write("          <thead class=\"table-dark text-center\">\n");
      out.write("            <tr>\n");
      out.write("              <th>Transaction ID</th>\n");
      out.write("              <th>Product ID</th>\n");
      out.write("              <th>User Email</th>\n");
      out.write("              <th>Address</th>\n");
      out.write("              <th>Quantity</th>\n");
      out.write("              <th>Status</th>\n");
      out.write("              <th>Action</th>\n");
      out.write("            </tr>\n");
      out.write("          </thead>\n");
      out.write("          <tbody class=\"text-center\">\n");
      out.write("\n");
      out.write("            <!-- If records exist -->\n");
      out.write("            <tr>\n");
      out.write("              <td>123456</td>\n");
      out.write("              <td><a href=\"#\">123456</a></td>\n");
      out.write("              <td>PiyushPatil@gmail.com</td>\n");
      out.write("              <td>Pipani Patrol Pump</td>\n");
      out.write("              <td>5</td>\n");
      out.write("              <td>\n");
      out.write("                <span class=\"badge bg-primary\">Ready To Ship</span>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <a href=\"#\" class=\"btn btn-success btn-sm\">Ship Now</a>\n");
      out.write("              </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            <!-- If NO records exist -->\n");
      out.write("            <!-- Uncomment this block only if no data is available -->\n");
      out.write("           \n");
      out.write("            <tr>\n");
      out.write("              <td colspan=\"7\" class=\"text-center text-muted\">\n");
      out.write("                No items available\n");
      out.write("              </td>\n");
      out.write("            </tr>\n");
      out.write("           \n");
      out.write("          </tbody>\n");
      out.write("        </table>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    <script\n");
      out.write("      src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("      crossorigin=\"anonymous\"\n");
      out.write("    ></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
