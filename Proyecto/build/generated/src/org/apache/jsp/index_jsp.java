package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
 System.out.println("Lol" + request.getServletContext().getContextPath()); 
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Newsfeed New Milleniun - Login</title>\n");
      out.write("       <!-- <meta charset=\"UTF-8\"> -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <link href=\"CSS/Inicio de sesion.css\" property=\"stylesheet\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"login\">\n");
      out.write("                <h1>Login</h1>\n");
      out.write("                <form method=\"POST\" action=\"/Proyecto/LogInServlet\">\n");
      out.write("                    <p><input type=\"text\" name=\"correoUsuario\" value=\"\" placeholder=\"Username\"></p>\n");
      out.write("                    <p><input type=\"password\" name=\"passwordUsuario\" value=\"\" placeholder=\"Password\"></p>\n");
      out.write("                    <p class=\"remember_me\">\n");
      out.write("                       \n");
      out.write("                            <label>\n");
      out.write("                                <input type=\"checkbox\" name=\"remember_me\" id=\"remember_me\">\n");
      out.write("                                Remember Me\n");
      out.write("                            </label>\n");
      out.write("                        \n");
      out.write("                    </p>\n");
      out.write("                    <p class=\"submit\"> <input type=\"submit\" naxºme=\"commit\" value=\"Login\"></p>\n");
      out.write("                </form>\n");
      out.write("            </div>  \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <div class=\"login-help\">\n");
      out.write("            <p class=\"submit\"> <input type=\"submit\" name=\"commit\" value=\"Forgot your Password?\"></p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"login-help\">\n");
      out.write("            <p class=\"submit\" ><a href=\"Register.jsp\"><button class=\"boton\">Register</button></a></p>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
