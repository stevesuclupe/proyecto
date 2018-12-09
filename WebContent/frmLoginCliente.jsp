<%@page import="accesodatos.datCliente"%>
<%@page import="entidades.entCliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Cliente</title>
     <link rel="stylesheet" href="Boostrap/css/style.css">
</head>
<body>
	
	<%	
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
		%>
			
	
    <div class="wrapper">
	<div class="container">
		<br/><br/><br/><br/><br/><br/>
		<h1>Welcome</h1>
		
		<form class="form">
			<input type="text" placeholder="Username" name="txtUsuario" type="text" autofocus>
			<input type="password" placeholder="Password" name="txtPassword" type="password" value="">
			
		<button type="submit" id="button" name="btnIngresar">Login</button>
		<button type="submit" name="btnRegistro">Registro</button>
		<button type="submit" name="btnSalir">Salir</button>
		</form>
	</div>
	
	<br/><br/>
<%
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
		%>
		
		<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="Boostrap/js/index.js"></script>


</body>
</html>