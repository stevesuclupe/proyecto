
<!DOCTYPE html>
<%@page import="entidades.entUsuario"%>
<%@page import="accesodatos.datEquipo"%>
<%@page import="entidades.entEquipo"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
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
            <a href="frmMenuIntranet.jsp" class="logo"><b>Listado de Equipos:</b></a>
      
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
                          <li><a  href="Index.jsp">Salir de Intranet</a></li>
                      </ul>
                  </li>
                

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      
          <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Lista de Laptops</h3>
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                     
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>
                              <tr>
                              
                                  <th class="numeric">IdEquipo</th>
                                  <th class="numeric">Marca</th>
                                  <th class="numeric">Modelo</th>
                                  <th class="numeric">Serie</th>
                                  <th class="numeric">Stock</th>
                                  <th class="numeric">Precio</th>
                                  <th class="numeric">Proveedor</th>
                                 <th>Imagen</th>
                              </tr>
                              </thead>
                              

				<tbody>
				<%
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
				%>
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
              2014 - Alvarez.is
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
</html>
