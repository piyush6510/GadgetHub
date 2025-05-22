package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class shippedItem_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <div class=\"container-fluid\">\n");
      out.write("      <div class=\"table-responsive\">\n");
      out.write("        <table class=\"table table-hover table-bordered align-middle\">\n");
      out.write("          <thead class=\"table-dark text-center\">\n");
      out.write("            <tr>\n");
      out.write("              <th>Transaction</th>\n");
      out.write("              <th>Product ID</th>\n");
      out.write("              <th>Username</th>\n");
      out.write("              <th>Address</th>\n");
      out.write("              <th>Quantity</th>\n");
      out.write("              <th>Amount</th>\n");
      out.write("              <th>Status</th>\n");
      out.write("            </tr>\n");
      out.write("          </thead>\n");
      out.write("          <tbody class=\"text-center\">\n");
      out.write("            <!-- Example record -->\n");
      out.write("            <tr>\n");
      out.write("              <td>123456</td>\n");
      out.write("              <td><a href=\"#\">123456</a></td>\n");
      out.write("              <td>Piyush Patil</td>\n");
      out.write("              <td>Pipani Patrol Pump</td>\n");
      out.write("              <td>5</td>\n");
      out.write("              <td>?10,000</td>\n");
      out.write("              <td class=\"text-success fw-semibold\">Shopped</td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            <!-- Example of 'No Item' row, shown when no records -->\n");
      out.write("           \n");
      out.write("            <tr>\n");
      out.write("              <td colspan=\"7\" class=\"text-center text-muted\">No items available</td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("          </tbody>\n");
      out.write("        </table>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <script\n");
      out.write("      src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("      crossorigin=\"anonymous\"\n");
      out.write("    ></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
