package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Profile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/Profile.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <title>Profile</title>\n");
      out.write("    </head>\n");
      out.write("    <body data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"50\">\n");
      out.write("        <header>\n");
      out.write("            <nav class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>                        \n");
      out.write("                        </button>\n");
      out.write("                        <a class=\"navbar-brand\" href=\"Homepage.jsp\">HMN Travel</a>\n");
      out.write("                    </div>\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li><a href=\"Northzone.jsp\">North Zone</a></li>\n");
      out.write("                        <li><a href=\"Centralzone.jsp\">Central Zone</a></li>\n");
      out.write("                        <li><a href=\"Southzone.jsp\">South Zone</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <form class=\"navbar-form navbar-left\" action=\"/action_page.php\">\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" placeholder=\"Search\" name=\"search\">\n");
      out.write("                            <div class=\"input-group-btn\">\n");
      out.write("                                <button class=\"btn btn-default\" type=\"submit\">\n");
      out.write("                                    <i class=\"glyphicon glyphicon-search\"></i>\n");
      out.write("                                </button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"Register.jsp\"><span class=\"glyphicon glyphicon-user\"></span> Sign Up</a></li>\n");
      out.write("                        <li><a href=\"Login.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"container\">\n");
      out.write("                <div class=\"panel-group\" id=\"accordion\">\n");
      out.write("                    <div class=\"row content\">\n");
      out.write("                        <div class=\"col-sm-3 sidenav\">\n");
      out.write("                            <h4>User Profile</h4>\n");
      out.write("                            <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("                                <div class=\"panel panel-default\">\n");
      out.write("                                    <div class=\"panel-heading\">\n");
      out.write("                                        <h4 class=\"panel-title\">\n");
      out.write("                                            <li class=\"active\"><a href=\"#demo\" data-parent=\"#accordion\" data-toggle=\"collapse\">Profile</a></li></h4>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"panel panel-default\">\n");
      out.write("                                    <div class=\"panel-heading\">\n");
      out.write("                                        <h4 class=\"panel-title\">\n");
      out.write("                                            <li class=\"active\"><a href=\"#demo1\" data-parent=\"#accordion\" data-toggle=\"collapse\">Change Password</a></li></h4>\n");
      out.write("                                        <li><a href=\"#section3\">Family</a></li>\n");
      out.write("                                        <li><a href=\"#section3\">Photos</a></li>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </ul><br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-sm-9\">\n");
      out.write("                            <div id=\"demo\"  class=\"panel-collapse collapse in\">\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <h4><small>Contact Information</small></h4>\n");
      out.write("                                    <hr>\n");
      out.write("                                    <h2>User Name:</h2>\n");
      out.write("                                    <h5><span class=\"label label-success\">Admin</span></h5><br>\n");
      out.write("                                    <p>Phone:0901434542</p>\n");
      out.write("                                    <p>Address:</p>\n");
      out.write("                                    <p>Email: huynhtrungnghia1995@gmail.com</p>\n");
      out.write("                                    <p>Facebook:</p>\n");
      out.write("                                    <br>\n");
      out.write("                                    <h4><small>Basic Information</small></h4>\n");
      out.write("                                    <hr>\n");
      out.write("                                    <p>Birthday: 30 November,1995</p>\n");
      out.write("                                    <p>Gender: Male</p>\n");
      out.write("                                    <hr>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div id=\"demo1\" class=\"panel-collapse collapse\">\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <h4><small>Change Password</small></h4>\n");
      out.write("                                </div></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        <footer class=\"container-fluid\">\n");
      out.write("            <p>Footer Text</p>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
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
