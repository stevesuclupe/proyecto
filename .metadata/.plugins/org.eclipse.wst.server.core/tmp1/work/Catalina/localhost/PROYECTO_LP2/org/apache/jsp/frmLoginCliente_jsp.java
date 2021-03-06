/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2016-06-09 05:52:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import accesodatos.datCliente;
import entidades.entCliente;

public final class frmLoginCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("accesodatos.datCliente");
    _jspx_imports_classes.add("entidades.entCliente");
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Login Cliente</title>\r\n");
      out.write("     <link rel=\"stylesheet\" href=\"Boostrap/css/style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t\r\n");
      out.write("\t");
	
	boolean Novalidado = false;
	boolean NoUsuario = false;
	boolean NoPassword = false;
	//Preguntamos si ha sido presionado el boton ingresar
	//request se lanza al abrir la pagina, 
	//captura los valores de los controles del form (instancia anterior)
	if(request.getParameter("btnIngresar")!=null){
		String Usuario = request.getParameter("txtUsuario");
			if(Usuario.equals("")){NoUsuario=true;}
		String Password = request.getParameter("txtPassword");
			if(Password.equals("")){NoPassword=true;}
		if(NoUsuario==false && NoPassword==false){
			try{
				entCliente c = datCliente.VerificarAcceso(Usuario, Password);
				if(c!=null){
					//Instanciamos la sesion
					HttpSession ses = request.getSession();
					//creamos un atributo usuario en la sesion
					ses.setAttribute("cliente", c);
					ses.setMaxInactiveInterval(1200);
					response.sendRedirect("frmBienvenidaCliente.jsp");
				}else{
					Novalidado = true;			
				}
			}catch(Exception e){
				out.print("<p align='center' style='color:red'>"+e.getMessage()+"</p>");
			}
		}
	}
		if(request.getParameter("btnRegistro")!=null){
			response.sendRedirect("frmRegistroCliente.jsp");
		}
		if(request.getParameter("btnSalir")!=null){
			response.sendRedirect("Index.jsp");
		}
		
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\r\n");
      out.write("    <div class=\"wrapper\">\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<br/><br/><br/><br/><br/><br/>\r\n");
      out.write("\t\t<h1>Welcome</h1>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<form class=\"form\">\r\n");
      out.write("\t\t\t<input type=\"text\" placeholder=\"Username\" name=\"txtUsuario\" type=\"text\" autofocus>\r\n");
      out.write("\t\t\t<input type=\"password\" placeholder=\"Password\" name=\"txtPassword\" type=\"password\" value=\"\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t<button type=\"submit\" id=\"login-button\" name=\"btnIngresar\">Login</button>\r\n");
      out.write("\t\t<button type=\"submit\" name=\"btnRegistro\">Registro</button>\r\n");
      out.write("\t\t<button type=\"submit\" name=\"btnSalir\">Salir</button>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<br/><br/>\r\n");

		if(NoUsuario){
			out.print("<p align='center' style='color:red'>Debe ingresar su Usuario!</p>");
			return;
		}		
		if(NoPassword){
			out.print("<p align='center' style='color:red'>Debe ingresar su Password!</p>");
			return;			
		}
		if(Novalidado){
			out.print("<p align='center' style='color:red'>Usuario o Password no valido!</p>");
			return;
		}
		
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<ul class=\"bg-bubbles\">\r\n");
      out.write("\t\t<li></li>\r\n");
      out.write("\t\t<li></li>\r\n");
      out.write("\t\t<li></li>\r\n");
      out.write("\t\t<li></li>\r\n");
      out.write("\t\t<li></li>\r\n");
      out.write("\t\t<li></li>\r\n");
      out.write("\t\t<li></li>\r\n");
      out.write("\t\t<li></li>\r\n");
      out.write("\t\t<li></li>\r\n");
      out.write("\t\t<li></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\r\n");
      out.write("    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"Boostrap/js/index.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
