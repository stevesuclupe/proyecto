<%@page import="accesodatos.datUsuario"%>
<%@page import="entidades.entUsuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Menu Intranet</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <link href="assets/css/table-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
 <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="frmMenuIntranet.jsp" class="logo"><b>Nuevo Usuario:</b></a>
      
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
            	<li>  <%
		HttpSession ses = request.getSession();
		if(ses.getAttribute("usuarito")==null){
			response.sendRedirect("frmCliente.jsp");
		}
		entUsuario u = (entUsuario)ses.getAttribute("usuarito");
	%>
	
	<%
		out.print("<h3>"+u.getNombres()+ "  "+u.getApellidos()+"       .                     "+"</h3>");
	%> </li>
                    <li><a class="logout" href="CerrarSesion.jsp">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="frmMenuIntranet.jsp"><img src="assets/img/logo-cabecera2.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Ventas Online</h5>
              	  	
                  
    <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Equipos</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="frmListadoEquipos.jsp">Listado de Equipos</a></li>
                          <li><a  href="frmNuevoEquipo.jsp">Nuevo Equipo</a></li>
                           <li><a  href="frmMenuEditar.jsp">Editar Equipo</a></li>
                            
                      </ul>
                  </li>

                
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Empleados</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="frmNuevoUsuario.jsp">Nuevo Usuario</a></li>
                         
                      </ul>
                  </li>
                 <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Salir de Intranet</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="LoginIntranet.jsp">Salir de Intranet</a></li>
                      </ul>
                  </li>
      

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
 <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Nuevo Usuario</h3>
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                     
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>
<h3>


	<%

	if(request.getParameter("btnGuardar")!=null){
		try{
			entUsuario p = new entUsuario();
			p.setNombres(request.getParameter("txtNombres"));
			p.setApellidos(request.getParameter("txtApellidos"));
			p.setEmail(request.getParameter("txtEmail"));
			p.setTelefono((request.getParameter("txtTelefono")));
			p.setUser(request.getParameter("txtUser"));
			p.setPassword(request.getParameter("txtPassword"));
			
				
			boolean x = datUsuario.InsertarUsuario(p);
			if(x){
				out.print("<h3>Se inserto satisfactoriamente</h3>");
				response.sendRedirect("frmListadoEquipos.jsp");
			}else{
				out.print("<h3>No se pudo insertar</h3>");
			}
		}catch(Exception e){
			out.print("<h3>"+e.getMessage()+"</h3>");
		}
	}
	if(request.getParameter("btnCancelar")!=null){
		response.sendRedirect("frmLoginCliente.jsp");
	}
	
	%>

<form>
	<tbody>

	
		<tr>
			<td>User:</td>
			<td><input type="text"  name="txtUser"  autofocus/></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="password"  name="txtPassword" "/></td>
		</tr>
		<tr>
			<td>Nombres:</td>
			<td><input type="text" name="txtNombres" /></td>
		</tr>
		<tr>
			<td>Apellidos:</td>
			<td><input type="text" name="txtApellidos" /></td>
		</tr>
		<tr>
			<td>Telefono:</td>
			<td><input type="text"  name="txtTelefono"/></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="text" name="txtEmail"/></td>
		</tr>
		
		
		<tr>
			<td colspan="2">
				<button type="submit" id="login-button" name="btnGuardar">Guardar</button>
		<button type="submit" name="btnCancelar">Cancelar</button>
			</td>
		</tr>
	
	 </tbody>
                          </table>
                          </section>
                  </div><!-- /content-panel -->
               </div><!-- /col-lg-4 -->			
		  	</div><!-- /row -->
		  	</section>
		  	</section>

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              Venta de Laptops
              <a href="responsive_table.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->


</body>
</html></html>