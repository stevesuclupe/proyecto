<%@page import="entidades.entCliente"%>
<%@page import="entidades.entOrdenPed"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<meta charset="utf-8">
    <link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/skin.css">
    <link href='http://fonts.googleapis.com/css?family=Cabin+Sketch:400,700' rel='stylesheet' type='text/css'>
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/tms-0.4.1.js"></script>
    <script src="js/jquery.jcarousel.min.js"></script>
    <script>
		$(document).ready(function(){
			$('.slider')._TMS({
				show:0,
				pauseOnHover:false,
				anteriorBu:false,
				siguienteBu:false,
				playBu:false,
				duration:700,
				preset:'fade',
				pagination:'.pags',
				pagNums:false,
				slideshow:7000,
				numStatus:false,
				banners:false,// fromLeft, fromRight, fromTop, fromBottom
				waitBannerAnimation:false,
				progressBar:false
			})
			jQuery('#mycarousel').jcarousel({
				horisontal: true,
				wrap:'circular',
				scroll:1,
				easing:'easeInOutBack',
				animation:1200
			});
		});
	</script>
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
    	<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
	<![endif]-->
<body>
<jsp:include page="PaginaMaestra/masterIntranetHEA.jsp"></jsp:include>	
	<h3>Carrito de Compras</h3>
	<table border="1" style='width:100%'>
	<thead style="background-color: yellow">
		<tr>
			<th>Codigo</th>
			<th>Descripcion</th>
			<th>Cantidad</th>
			<th>Precio</th>
			<th>Descuento</th>
			<th>Sub total</th>
		</tr>
	</thead>
	<tbody>
	<%
	HttpSession ses = request.getSession();
	entCliente c= (entCliente)ses.getAttribute("cliente");
	%>
	
	<tr>
	     <tr><td>Codigo:</td><td><%=c.getIDCliente() %></td></tr>
	      <tr><td>RUC:</td><td><%=c.getNombres() %></td></tr>
	       <tr><td>Razon Social:</td><td><%=c.getApellidos() %></td></tr>
	         <tr><td>Direccion:</td><td><%=c.getDNI() %></td></tr>
	       
	
	
	<%
	
	ArrayList<entOrdenPed> lista = (ArrayList<entOrdenPed>)ses.getAttribute("Venta");
	for(int i=0;i<lista.size();i++){
		out.print("<tr>");
		out.print("<td>"+lista.get(i).getEquipo().getIDEquipo()+"</td>");
		out.print("<td>"+lista.get(i).getCantidad()+"</td>");
		out.print("<td>"+lista.get(i).getPrecio_Unitario()+"</td>");
		out.print("<td>"+lista.get(i).getDescuento()+"</td>");
	
		out.print("<td><img src='images/"+
						lista.get(i).getEquipo().getImagen()+
				"' style='width:20px; height:20px'/></td>");
		out.print("</tr>");
	}
	%>
	</tbody>
	</table>
	<br/>
	<form method="post" action="sGuardarPedido">
	Tarjeta:<select name="cboTarjeta">
             <option value="1">Visa</option>	
              <option value="2">MasterCard</option>	
               <option value="3">CMR</option>	
	</select><br><br/>
	Usuario:<input type="text" name="txtUsuarioTarjeta"/><br> <br/>
	Numero:<input type="text" name="txtNumeroTarjeta"/><br> <br/>
	<input type="submit" value="Guardar Pedido"/> 
	</form>
<jsp:include page="PaginaMaestra/masterExtranetFooter.jsp"></jsp:include>
</body>
</html>