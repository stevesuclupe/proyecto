<%@page import="entidades.entCliente"%>
<%@page import="org.apache.tomcat.util.ExceptionUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="entidades.*"%> 
<%@page import="accesodatos.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro Clientes</title>
     <link rel="stylesheet" href="Boostrap/css/style.css">
</head>
<body>

<body>
	<h3></h3>
	<br/>

	<%

	if(request.getParameter("btnGuardar")!=null){
		try{
			entCliente p = new entCliente();
			p.setNombres(request.getParameter("txtNombre"));
			p.setApellidos(request.getParameter("txtApellido"));
			p.setDireccion(request.getParameter("txtDireccion"));
			p.setTelefono((request.getParameter("txtTelefono")));
			p.setUsuario(request.getParameter("txtUsuario"));
			p.setPassword(request.getParameter("Password"));
			p.setDNI(Integer.parseInt(request.getParameter("txtDNI")));
			
				
			boolean x = datCliente.InsertarCliente(p);
			if(x){
				out.print("<h3>Se inserto satisfactoriamente</h3>");
				response.sendRedirect("frmLoginCliente.jsp");
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
	
	 <div class="wrapper">
	<div class="container">
	<form><center>
	<table>
	<h1>Registro   de   Cliente</h1>
	<br/><br/>
	
		<tr>
			<td>Nombre:</td>
			<td><input type="text"  name="txtNombre" placeholder="Nombres" autofocus/></td>
		</tr>
		<tr>
			<td>Apellidos:</td>
			<td><input type="text"  name="txtApellido" placeholder="Apellidos"/></td>
		</tr>
		<tr>
			<td>Direccion:</td>
			<td><input type="text" placeholder="Direccion" name="txtDireccion"/></td>
		</tr>
		<tr>
			<td>Telefono:</td>
			<td><input type="text" placeholder="Telefono" name="txtTelefono"/></td>
		</tr>
		<tr>
			<td>Usuario:</td>
			<td><input type="text" placeholder="Usuario" name="txtUsuario"/></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="text" placeholder="Password" name="Password"/></td>
		</tr>
		<tr>
			<td>DNI:</td>
			<td><input type="text" placeholder="DNI" name="txtDNI"/></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<button type="submit" id="login-button" name="btnGuardar">Guardar</button>
		<button type="submit" name="btnCancelar">Cancelar</button>
			</td>
		</tr>
	
	</table>
	</center>

	</form>
	
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