/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2016-06-09 05:50:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Venta de Laptops</title>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/reset.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/slider.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/skin.css\">\r\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Cabin+Sketch:400,700' rel='stylesheet' type='text/css'>\r\n");
      out.write("    <script src=\"js/jquery-1.7.min.js\"></script>\r\n");
      out.write("    <script src=\"js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("    <script src=\"js/tms-0.4.1.js\"></script>\r\n");
      out.write("    <script src=\"js/jquery.jcarousel.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("\t\t$(document).ready(function(){\r\n");
      out.write("\t\t\t$('.slider')._TMS({\r\n");
      out.write("\t\t\t\tshow:0,\r\n");
      out.write("\t\t\t\tpauseOnHover:false,\r\n");
      out.write("\t\t\t\tanteriorBu:false,\r\n");
      out.write("\t\t\t\tsiguienteBu:false,\r\n");
      out.write("\t\t\t\tplayBu:false,\r\n");
      out.write("\t\t\t\tduration:700,\r\n");
      out.write("\t\t\t\tpreset:'fade',\r\n");
      out.write("\t\t\t\tpagination:'.pags',\r\n");
      out.write("\t\t\t\tpagNums:false,\r\n");
      out.write("\t\t\t\tslideshow:7000,\r\n");
      out.write("\t\t\t\tnumStatus:false,\r\n");
      out.write("\t\t\t\tbanners:false,// fromLeft, fromRight, fromTop, fromBottom\r\n");
      out.write("\t\t\t\twaitBannerAnimation:false,\r\n");
      out.write("\t\t\t\tprogressBar:false\r\n");
      out.write("\t\t\t})\r\n");
      out.write("\t\t\tjQuery('#mycarousel').jcarousel({\r\n");
      out.write("\t\t\t\thorisontal: true,\r\n");
      out.write("\t\t\t\twrap:'circular',\r\n");
      out.write("\t\t\t\tscroll:1,\r\n");
      out.write("\t\t\t\teasing:'easeInOutBack',\r\n");
      out.write("\t\t\t\tanimation:1200\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<!--[if lt IE 8]>\r\n");
      out.write("       <div style=' clear: both; text-align:center; position: relative;'>\r\n");
      out.write("         <a href=\"http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode\">\r\n");
      out.write("           <img src=\"http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg\" border=\"0\" height=\"42\" width=\"820\" alt=\"You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.\" />\r\n");
      out.write("        </a>\r\n");
      out.write("      </div>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("   \t\t<script type=\"text/javascript\" src=\"js/html5.js\"></script>\r\n");
      out.write("    \t<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/ie.css\">\r\n");
      out.write("\t<![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "PaginaMaestra/masterExtranetHead.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div id=\"slide\">\t\t\r\n");
      out.write("            <div class=\"slider\">\r\n");
      out.write("            \r\n");
      out.write("                <ul class=\"items\">\r\n");
      out.write("                    <li><img src=\"images/Banner6.jpg\" alt=\"\" /></li>\r\n");
      out.write("                    <li><img src=\"images/image4-4.jpg\" alt=\"\" /></li>\r\n");
      out.write("                    <li><img src=\"images/banner3-3.jpg\" alt=\"\" /></li>\r\n");
      out.write("                    <li><img src=\"images/image5-5.jpg\" alt=\"\" /></li>\r\n");
      out.write("                    <li><img src=\"images/banner5-5.jpg\" alt=\"\" /></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <ul class=\"pags\">\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><strong>0</strong>1</a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><strong>0</strong>2</a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><strong>0</strong>3</a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><strong>0</strong>4</a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><strong>0</strong>5</a></li>\r\n");
      out.write("            </ul>\t\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>   \r\n");
      out.write("<!--==============================content================================-->\r\n");
      out.write("    <section id=\"content\"><div class=\"ic\"></div>\r\n");
      out.write("        <div class=\"gallery-block\">\r\n");
      out.write("        \t<h2>Fotos destacadas:</h2>\r\n");
      out.write("            <ul id=\"mycarousel\" class=\"jcarousel-skin-tango gallery-photo\">\r\n");
      out.write("            \t<li><a href=\"frmCatalogo.jsp\"><img src=\"images/Dell Inspiron 3005.jpg\" alt=\"\"></a><a href=\"frmCatalogo.jsp\"><img src=\"images/Lenovo G400.png\" alt=\"\"></a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><img src=\"images/HP Compaq 600.jpg\" alt=\"\"></a><a href=\"frmCatalogo.jsp\"><img src=\"images/HP Compaq 800.jpg\" alt=\"\"></a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><img src=\"images/Dell Inspiron 3010.jpg\" alt=\"\"></a><a href=\"frmCatalogo.jsp\"><img src=\"images/Lenovo Z500-59.jpg\" alt=\"\"></a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><img src=\"images/Lenovo G560.jpg\" alt=\"\"></a><a href=\"frmCatalogo.jsp\"><img src=\"images/HP Compaq 1022.jpg\" alt=\"\"></a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><img src=\"images/Dell Inspiron 3080.jpg\" alt=\"\"></a><a href=\"frmCatalogo.jsp\"><img src=\"images/Lenovo B50-45.png\" alt=\"\"></a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><img src=\"images/HP Pavilion Dv7.jpg\" alt=\"\"></a><a href=\"frmCatalogo.jsp\"><img src=\"images/HP Pavilion Dv6.png\" alt=\"\"></a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><img src=\"images/Lenovo G560.jpg\" alt=\"\"></a><a href=\"frmCatalogo.jsp\"><img src=\"images/HP Compaq 1022.jpg\" alt=\"\"></a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><img src=\"images/Dell Inspiron 3080.jpg\" alt=\"\"></a><a href=\"frmCatalogo.jsp\"><img src=\"images/Lenovo B50-45.png\" alt=\"\"></a></li>\r\n");
      out.write("                <li><a href=\"frmCatalogo.jsp\"><img src=\"images/HP Pavilion Dv7.jpg\" alt=\"\"></a><a href=\"frmCatalogo.jsp\"><img src=\"images/HP Pavilion Dv6.png\" alt=\"\"></a></li>\r\n");
      out.write("                  <li><a href=\"frmCatalogo.jsp\"><img src=\"images/Dell Inspiron 3500.jpg\" alt=\"\"></a><a href=\"frmCatalogo.jsp\"><img src=\"images/Dell-Inspiron 3000.jpg\" alt=\"\"></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"page1-row1 pad-1\">\r\n");
      out.write("        \t<div class=\"col-1\">\r\n");
      out.write("            \t<h2 class=\"h3 p2\">Marcas:</h2>\r\n");
      out.write("                <ul class=\"list-1\">\r\n");
      out.write("                \t<li><a href=\"frmCatalogo.jsp\">DELL</a>     <a href=\"#\"><img src=\"images/logodell.jpg\" style='width:23px; height:23px'></a></li>\r\n");
      out.write("                    <li><a href=\"frmCatalogo.jsp\">HP</a>       <a href=\"#\">     <img src=\"images/logohp.jpg\" style='width:23px; height:23px'></a></li>\r\n");
      out.write("                    <li><a href=\"frmCatalogo.jsp\">Lenovo</a>   <a href=\"#\">    <img src=\"images/logolenovo.jpg\" style='width:23px; height:23px'></a></li>\r\n");
      out.write("                    <li><a href=\"frmCatalogo.jsp\">VAIO</a>     <a href=\"#\">    <img src=\"images/logovaio.jpg\" style='width:23px; height:23px'></a></li>\r\n");
      out.write("                    <li><a href=\"frmCatalogo.jsp\">Toshiba</a>  <a href=\"#\"> <img src=\"images/logotoshiba.jpg\" style='width:23px; height:23px'></a></li>\r\n");
      out.write("                    <li><a href=\"frmCatalogo.jsp\">Samsung</a>  <a href=\"#\"> <img src=\"images/logosamsung.jpg\" style='width:23px; height:23px'></a></li>\r\n");
      out.write("                   \r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-2\">\r\n");
      out.write("            \t<h2 class=\"h2 p2\">Mas Informacion:</h2>\r\n");
      out.write("                <p class=\"p1\">La laptop perfecta depende de las necesidades informaticas de aquel que la describa.Los nuevos <a href=\"marcas.jsp\" class=\"link\" target=\"_blank\">modelos</a> de laptops ofrecen una diversidad de opciones que se ajustan a las exigencias tecnologicas de los usuarios, entregando un producto  \r\n");
      out.write("                de buena calidad &amp; un buen funcionamiento.</p>\r\n");
      out.write("\t\t\t\t<p>Nos diferenciamos en el mercado por ofrecer a nuestros clientes un equipo de alta calidad lo que garantiza la efectividad, rapidez, eficiencia. </p>\r\n");
      out.write("                <a href=\"Vision.jsp\" class=\"link-1 link-1-pad bot-1\">Continuar Leyendo</a>\r\n");
      out.write("                <div class=\"clear\"></div>\r\n");
      out.write("                          </div>  \r\n");
      out.write("            <div class=\"col-3\">\r\n");
      out.write("            \t<h2 class=\"h2 p2\">Contactanos:</h2>\r\n");
      out.write("                <div class=\"adr\">\r\n");
      out.write("                    <p class=\"p3\"><strong>Freephone:</strong> <span class=\"clr-1\">+1 800 559 6580</span><br>\r\n");
      out.write("                    <strong>Telephone:</strong> <span class=\"clr-1\">+1 800 603 6035</span><br>\r\n");
      out.write("                    <strong>Fax:</strong> <span class=\"clr-1\">+1 800 889 9898</span><br>\r\n");
      out.write("                    <strong>E-mail:</strong> <a href=\"#\" class=\"clr-1\">mail@demolink.org</a></p>\r\n");
      out.write("                    <p class=\"clr-1\">9870St Vincent Place,<br>Glasgow, DC 45 Fr 45.</p> \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>      \r\n");
      out.write("        </div>\r\n");
      out.write("    </section> \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "PaginaMaestra/masterExtranetFooter.jsp", out, false);
      out.write("             \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
