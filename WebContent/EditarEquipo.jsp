<%@page import="entidades.entUsuario"%>
<%@page import="accesodatos.datProveedor"%>
<%@page import="accesodatos.datMarca"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entidades.entProveedor"%>
<%@page import="entidades.entMarca"%>
<%@page import="accesodatos.datEquipo"%>
<%@page import="entidades.entEquipo"%>
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

    <title>Ingreso de Equipos</title>

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
<!--sidebar start-->
 <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="frmMenuIntranet.jsp" class="logo"><b>Editar  Equipos:</b></a>
      
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
          	<h3><i class="fa fa-angle-right"></i> Editar Equipo</h3>
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                     
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>


	<h3>Editar Equipo</h3>
	<% 
	try{
		entEquipo _e = null;
		if(request.getParameter("idprod")!=null){
			//buscamos el producto con el ID que llega a la pagina
// 			try{
				int idEqui = Integer.parseInt(request.getParameter("idprod"));
				_e = datEquipo.DevolverEquipo(idEqui);
// 			}catch(Exception e){
// 				out.print("<h3>"+e.getMessage()+"</h3>");
// 			}
		}	
		if(request.getParameter("btnGuardar")!=null){
// 			try{
				entEquipo p1 = new entEquipo();
				entMarca m1 = new entMarca();
				entProveedor pr1= new entProveedor();
				
				
				p1.setIDEquipo(Integer.parseInt(request.getParameter("txtId")));
				p1.setModelo(request.getParameter("txtModelo"));
				p1.setSerie(request.getParameter("txtSerie"));
				p1.setImagen(request.getParameter("txtImagen"));
				p1.setPrecio(Double.parseDouble(request.getParameter("txtPrecio")));
				p1.setStock(Integer.parseInt(request.getParameter("txtStock")));
					
					m1.setIDMarca(Integer.parseInt(request.getParameter("cboMarca")));
				p1.setMarca(m1);
				pr1.setIDProveedor(Integer.parseInt(request.getParameter("cboProveedor")));
				p1.setProveedor(pr1);
				boolean x = datEquipo.EditarEquipo(p1);
				if(x){
					out.print("<h3>Se Edito satisfactoriamente</h3>");
					response.sendRedirect("frmListadoEquipos.jsp");
				}else{
					out.print("<h3>No se pudo insertar</h3>");
				}
// 			}catch(Exception e){
// 				out.print("<h3>"+e.getMessage()+"</h3>");
// 			}
				if(request.getParameter("btnCancelar")!=null){
					response.sendRedirect("frmListadoEquipos.jsp");
				}
		}
		
		
	%>
	<form>
	
	<tbody>
		
		<tr>
			<td>Id:</td>
			<td><input type="text" name="txtId" value="<%=_e.getIDEquipo()%>"/></td>			
		</tr>
		
		<tr>
			<td>Marca:</td>
			<td>
				<select name="cboMarca">
				<%
					ArrayList<entMarca> m = datMarca.ListarMarca();
					for(int i=0;i<m.size();i++){
						if(m.get(i).getIDMarca()==_e.getMarca().getIDMarca()){
							out.print("<option value='"+m.get(i).getIDMarca()+
									"' selected='selected'>"+m.get(i).getDescripcion()+"</option>");
						}else{
							out.print("<option value='"+m.get(i).getIDMarca()+
									"'>"+m.get(i).getDescripcion()+"</option>");
						}
						//<option value="1">Adidas</option>
						//<option value="2">Hictec</option>
					}
				%>
				</select>				
			</td>
		</tr>

		<tr>
			<td>Modelo:</td>
			<td><input type="text" name="txtModelo" value="<%=_e.getModelo()%>"/></td>
		</tr>
		<tr>
			<td>Serie:</td>
			<td><input type="text" name="txtSerie" value="<%=_e.getSerie()%>"/></td>
		</tr>
		
		<tr>
			<td>Proveedor:</td>
			<td>
				<select name="cboProveedor">
				<%
					ArrayList<entProveedor> pr = datProveedor.ListarProveedores();
					for(int i=0;i<pr.size();i++){
						if(pr.get(i).getIDProveedor()==_e.getProveedor().getIDProveedor()){
							out.print("<option value='"+pr.get(i).getIDProveedor()+
									"' selected='selected'>"+pr.get(i).getRazonSocial()+"</option>");
						}else{
							out.print("<option value='"+pr.get(i).getIDProveedor()+
									"'>"+pr.get(i).getRazonSocial()+"</option>");
						}
						//<option value="1">Adidas</option>
						//<option value="2">Hictec</option>
					}
				%>
				</select>				
			</td>
		</tr>
		
		<tr>
			<td>Stock:</td>
			<td><input type="text" name="txtStock" value="<%=_e.getStock()%>"/></td>
		</tr>
		
		<tr>
			<td>Precio:</td>
			<td><input type="text" name="txtPrecio" value="<%=_e.getPrecio()%>"/></td>
		</tr>
		
		<tr>
			<td>Imagen:</td>
			<td><input type="file" name="txtImagen" value="<%=_e.getImagen()%>"/></td>
		</tr>
		
		
		
		<tr>
			<td colspan="2">
				<input type="submit" name="btnGuardar" value="Guardar"/>
				<input type="submit" name="btnCancelar" value="Cancelar"/>
			</td>
		</tr>
		<%
	}catch(Exception e){
		out.print("<h3>"+e.getMessage()+"</h3>");
	}	
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
</html>

