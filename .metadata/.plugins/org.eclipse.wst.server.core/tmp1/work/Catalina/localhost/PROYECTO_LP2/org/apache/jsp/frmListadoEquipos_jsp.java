/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2016-06-09 06:17:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import entidades.entUsuario;
import accesodatos.datEquipo;
import entidades.entEquipo;
import java.util.ArrayList;

public final class frmListadoEquipos_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("accesodatos.datEquipo");
    _jspx_imports_classes.add("entidades.entEquipo");
    _jspx_imports_classes.add("entidades.entUsuario");
    _jspx_imports_classes.add("java.util.ArrayList");
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"Dashboard\">\r\n");
      out.write("    <meta name=\"keyword\" content=\"Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina\">\r\n");
      out.write("\r\n");
      out.write("    <title>Menu Intranet</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap core CSS -->\r\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\">\r\n");
      out.write("    <!--external css-->\r\n");
      out.write("    <link href=\"assets/font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("        \r\n");
      out.write("    <!-- Custom styles for this template -->\r\n");
      out.write("    <link href=\"assets/css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"assets/css/style-responsive.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <link href=\"assets/css/table-responsive.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\r\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("  </head>\r\n");
      out.write("\r\n");
      out.write("  <body>\r\n");
      out.write("\r\n");
      out.write("   <section id=\"container\" >\r\n");
      out.write("      <!-- **********************************************************************************************************************************************************\r\n");
      out.write("      TOP BAR CONTENT & NOTIFICATIONS\r\n");
      out.write("      *********************************************************************************************************************************************************** -->\r\n");
      out.write("      <!--header start-->\r\n");
      out.write("      <header class=\"header black-bg\">\r\n");
      out.write("              <div class=\"sidebar-toggle-box\">\r\n");
      out.write("                  <div class=\"fa fa-bars tooltips\" data-placement=\"right\" data-original-title=\"Toggle Navigation\"></div>\r\n");
      out.write("              </div>\r\n");
      out.write("            <!--logo start-->\r\n");
      out.write("            <a href=\"frmMenuIntranet.jsp\" class=\"logo\"><b>Listado de Equipos:</b></a>\r\n");
      out.write("      \r\n");
      out.write("            <div class=\"top-menu\">\r\n");
      out.write("            \t<ul class=\"nav pull-right top-menu\">\r\n");
      out.write("            \t<li>  ");

		HttpSession ses = request.getSession();
		if(ses.getAttribute("usuarito")==null){
			response.sendRedirect("frmCliente.jsp");
		}
		entUsuario u = (entUsuario)ses.getAttribute("usuarito");
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t");

		out.print("<h3>"+u.getNombres()+ "  "+u.getApellidos()+"       .                     "+"</h3>");
	
      out.write(" </li>\r\n");
      out.write("                    <li><a class=\"logout\" href=\"CerrarSesion.jsp\">Logout</a></li>\r\n");
      out.write("            \t</ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </header>\r\n");
      out.write("      <!--header end-->\r\n");
      out.write("      \r\n");
      out.write("      <!-- **********************************************************************************************************************************************************\r\n");
      out.write("      MAIN SIDEBAR MENU\r\n");
      out.write("      *********************************************************************************************************************************************************** -->\r\n");
      out.write("      <!--sidebar start-->\r\n");
      out.write("      <aside>\r\n");
      out.write("          <div id=\"sidebar\"  class=\"nav-collapse \">\r\n");
      out.write("              <!-- sidebar menu start-->\r\n");
      out.write("              <ul class=\"sidebar-menu\" id=\"nav-accordion\">\r\n");
      out.write("              \r\n");
      out.write("              \t  <p class=\"centered\"><a href=\"frmMenuIntranet.jsp\"><img src=\"assets/img/logo-cabecera2.jpg\" class=\"img-circle\" width=\"60\"></a></p>\r\n");
      out.write("              \t  <h5 class=\"centered\">Ventas Online</h5>\r\n");
      out.write("              \t  \t\r\n");
      out.write("                  \r\n");
      out.write("    <li class=\"sub-menu\">\r\n");
      out.write("                      <a href=\"javascript:;\" >\r\n");
      out.write("                          <i class=\"fa fa-desktop\"></i>\r\n");
      out.write("                          <span>Equipos</span>\r\n");
      out.write("                      </a>\r\n");
      out.write("                      <ul class=\"sub\">\r\n");
      out.write("                          <li><a  href=\"frmListadoEquipos.jsp\">Listado de Equipos</a></li>\r\n");
      out.write("                          <li><a  href=\"frmNuevoEquipo.jsp\">Nuevo Equipo</a></li>\r\n");
      out.write("                           <li><a  href=\"frmMenuEditar.jsp\">Editar Equipo</a></li>\r\n");
      out.write("                            \r\n");
      out.write("                      </ul>\r\n");
      out.write("                  </li>\r\n");
      out.write("\r\n");
      out.write("                 \r\n");
      out.write("                    <li class=\"sub-menu\">\r\n");
      out.write("                      <a href=\"javascript:;\" >\r\n");
      out.write("                          <i class=\"fa fa-book\"></i>\r\n");
      out.write("                          <span>Empleados</span>\r\n");
      out.write("                      </a>\r\n");
      out.write("                      <ul class=\"sub\">\r\n");
      out.write("                          <li><a  href=\"frmNuevoUsuario.jsp\">Nuevo Usuario</a></li>\r\n");
      out.write("                         \r\n");
      out.write("                      </ul>\r\n");
      out.write("                  </li>\r\n");
      out.write("                 <li class=\"sub-menu\">\r\n");
      out.write("                      <a href=\"javascript:;\" >\r\n");
      out.write("                          <i class=\"fa fa-tasks\"></i>\r\n");
      out.write("                          <span>Salir de Intranet</span>\r\n");
      out.write("                      </a>\r\n");
      out.write("                      <ul class=\"sub\">\r\n");
      out.write("                          <li><a  href=\"Index.jsp\">Salir de Intranet</a></li>\r\n");
      out.write("                      </ul>\r\n");
      out.write("                  </li>\r\n");
      out.write("                \r\n");
      out.write("\r\n");
      out.write("              </ul>\r\n");
      out.write("              <!-- sidebar menu end-->\r\n");
      out.write("          </div>\r\n");
      out.write("      </aside>\r\n");
      out.write("      \r\n");
      out.write("          <section id=\"main-content\">\r\n");
      out.write("          <section class=\"wrapper\">\r\n");
      out.write("          \t<h3><i class=\"fa fa-angle-right\"></i> Lista de Laptops</h3>\r\n");
      out.write("\t\t  \t\t<div class=\"row mt\">\r\n");
      out.write("\t\t\t  \t\t<div class=\"col-lg-12\">\r\n");
      out.write("                      <div class=\"content-panel\">\r\n");
      out.write("                     \r\n");
      out.write("                          <section id=\"unseen\">\r\n");
      out.write("                            <table class=\"table table-bordered table-striped table-condensed\">\r\n");
      out.write("                              <thead>\r\n");
      out.write("                              <tr>\r\n");
      out.write("                              \r\n");
      out.write("                                  <th class=\"numeric\">IdEquipo</th>\r\n");
      out.write("                                  <th class=\"numeric\">Marca</th>\r\n");
      out.write("                                  <th class=\"numeric\">Modelo</th>\r\n");
      out.write("                                  <th class=\"numeric\">Serie</th>\r\n");
      out.write("                                  <th class=\"numeric\">Stock</th>\r\n");
      out.write("                                  <th class=\"numeric\">Precio</th>\r\n");
      out.write("                                  <th class=\"numeric\">Proveedor</th>\r\n");
      out.write("                                 <th>Imagen</th>\r\n");
      out.write("                              </tr>\r\n");
      out.write("                              </thead>\r\n");
      out.write("                              \r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tbody>\r\n");
      out.write("\t\t\t\t");

		// 		try{
					ArrayList<entEquipo> Lista = datEquipo.ListarEquipo();
					for(int i=0;i<Lista.size();i++){
						out.print("<tr>");
						out.print("<td>"+Lista.get(i).getIDEquipo()+"</td>");
						out.print("<td>"+Lista.get(i).getMarca().getDescripcion()+"</td>");
						out.print("<td>"+Lista.get(i).getModelo()+"</td>");
						out.print("<td>"+Lista.get(i).getSerie()+"</td>");
						out.print("<td>"+Lista.get(i).getStock()+"</td>");
						out.print("<td>"+Lista.get(i).getPrecio()+"</td>");
						out.print("<td>"+Lista.get(i).getProveedor().getRazonSocial()+"</td>");
						out.print("<td><img src='images/"+
								Lista.get(i).getImagen()+
						"' style='width:65px; height:65px'/></td>");
						
						out.print("</tr>");
					}
		// 		}catch(Exception e){
		// 			out.print("<h3>"+e.getMessage()+"</h3>");
		// 		}
				
      out.write("\r\n");
      out.write("\t\t\t\t </tbody>\r\n");
      out.write("                          </table>\r\n");
      out.write("                          </section>\r\n");
      out.write("                  </div><!-- /content-panel -->\r\n");
      out.write("               </div><!-- /col-lg-4 -->\t\t\t\r\n");
      out.write("\t\t  \t</div><!-- /row -->\r\n");
      out.write("\t\t  \t</section>\r\n");
      out.write("\t\t  \t</section>\r\n");
      out.write("\r\n");
      out.write("      <!--main content end-->\r\n");
      out.write("      <!--footer start-->\r\n");
      out.write("      <footer class=\"site-footer\">\r\n");
      out.write("          <div class=\"text-center\">\r\n");
      out.write("              2014 - Alvarez.is\r\n");
      out.write("              <a href=\"responsive_table.html#\" class=\"go-top\">\r\n");
      out.write("                  <i class=\"fa fa-angle-up\"></i>\r\n");
      out.write("              </a>\r\n");
      out.write("          </div>\r\n");
      out.write("      </footer>\r\n");
      out.write("      <!--footer end-->\r\n");
      out.write("  </section>\r\n");
      out.write("\r\n");
      out.write("    <!-- js placed at the end of the document so the pages load faster -->\r\n");
      out.write("    <script src=\"assets/js/jquery.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <script class=\"include\" type=\"text/javascript\" src=\"assets/js/jquery.dcjqaccordion.2.7.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/jquery.scrollTo.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/jquery.nicescroll.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!--common script for all pages-->\r\n");
      out.write("    <script src=\"assets/js/common-scripts.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!--script for this page-->\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
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
