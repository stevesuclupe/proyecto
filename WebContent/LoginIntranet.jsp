
<!DOCTYPE html>
<%@page import="accesodatos.datUsuario"%>
<%@page import="entidades.entUsuario"%>
<html >
  <head>
  <meta charset="utf-8">
	<title>Intranet Usuario</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="LoginIntranet/css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="LoginIntranet/css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

    
  </head>

  <body>

  
	
	
	<%
		HttpSession ses = request.getSession();
		if(ses.getAttribute("usuarito")!=null){
			response.sendRedirect("frmIntranetUsuario.jsp");
		}
		if(request.getParameter("btnIngresar")!=null){
			String User = request.getParameter("txtUsuario");
			String Password = request.getParameter("txtPassword");
			entUsuario u = datUsuario.VerificarAcceso(User, Password);
			if(u!=null){
				//HttpSession ses = request.getSession();
				ses.setAttribute("usuarito", u);
				response.sendRedirect("frmIntranetUsuario.jsp");
			}
			
			}
		if(request.getParameter("btnCancelar")!=null){
			response.sendRedirect("Index.jsp");
		}
	%>
	
	
<form >
	
		<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">Acceso <span>Intranet</span></span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Login</h2>
			</div>
				<label for="username">Username</label>
			<br/>
			<input type="text" id="username" name="txtUsuario" autofocus>
			<br/>
			<label for="password">Password</label>
			<br/>
			<input type="password" id="password"  name="txtPassword" value="">
			<br/>
			
				<button type="submit"  name="btnIngresar">Login</button>
				<button type="submit" name="btnCancelar">Salir</button>
		</div>
	</div>
	</form>

		
	
		
		
    
  </body>
  <script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>
</html>
