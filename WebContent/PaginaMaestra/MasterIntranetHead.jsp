<%@page import="entidades.entUsuario"%>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <form >
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="frmIntranetUsuario.jsp" class="logo"><b>Intranet de Usuario</b></a>
      
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
	
	
                    <li><a class="logout" href="LoginIntranet.jsp">Logout</a></li>
                      
            	</ul>
            </div>
        </header>
 </form>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="frmIntranetUsuario.jsp"><img src="assets/img/logo-cabecera2.jpg" class="img-circle" width="60"></a></p>
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
                          <i class="fa fa-cogs"></i>
                          <span>Components</span>
                      </a>
                      <ul class="sub">
                         <li><a  href="Hora.jsp">Hora</a></li>
                          <li><a  href="calendar.jsp">Calendario</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Empleados</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="frmNuevoUsuario.jsp">Nuevo Uusario</a></li>
                         
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Forms</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="form_component.html">Form Components</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Data Tables</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="basic_table.html">Basic Table</a></li>
                          <li><a  href="responsive_table.html">Responsive Table</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>Charts</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="morris.html">Morris</a></li>
                          <li><a  href="chartjs.html">Chartjs</a></li>