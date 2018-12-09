
<!DOCTYPE html>
<%@page import="entidades.entCliente"%>
<%@page import="accesodatos.datEquipo"%>
<%@page import="entidades.entEquipo"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
    <title>Marcas</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/skin-2.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/jquery.fancybox-1.3.4.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/tabs.css">
    <link href='http://fonts.googleapis.com/css?family=Cabin+Sketch:400,700' rel='stylesheet' type='text/css'>
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.jcarousel.min.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>
    <script src="js/tabs.js"></script>
    <script>
		$(document).ready(function(){
			jQuery('#mycarousel-1, #mycarousel-2, #mycarousel-3, #mycarousel-4, #mycarousel-5, #mycarousel-6, #mycarousel-7').jcarousel({
				horisontal: true,
				wrap:'circular',
				scroll:1,
				easing:'easeInOutBack',
				animation:1200
			});
			$("a.plus").fancybox({
				'transitionIn'	:	'elastic',
				'transitionOut'	:	'elastic',
				'speedIn'		:	600, 
				'speedOut'		:	200, 
				'overlayShow'	:	true
			})
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
</head>
<body>
  
  <!--==============================header=================================-->
  
<!--==============================content================================-->
    <jsp:include page="PaginaMaestra/masterIntranetHEA.jsp"></jsp:include>
   	
     

     
    <center>
    
	<%
	try{
		int idMarca = Integer.parseInt(request.getParameter("idMarca"));
		ArrayList<entEquipo> lista = datEquipo.ListarEquipoxMarca(idMarca);
		int numceldas = 0;
		HttpSession ses = request.getSession();
		for(int i=0;i<lista.size();i++){
			if(numceldas==0){
				out.print("<tr>");	
			}
			numceldas++;
			out.print("<td style='width:25%'>"+
					"<form method='post' action='sAgregar'>"+
					"<img src='images/"+lista.get(i).getImagen()+
					"' style='width:250px; height:250px'/><br/><br/>"+
					"<p style='color:#69e0e0; font-family:Arial;font-size:20px'>Modelo: "+
					lista.get(i).getModelo()+"</p><br/>"+				
					"<p style='color:#69e0e0; font-family:Arial;font-size:20px'>Serie:"+lista.get(i).getSerie()+"</p><br/>");
			if(ses.getAttribute("cliente")!=null){
				out.print("<p style='color:#69e0e0; font-family:Arial;font-size:20px'>"+
						"Precio: "+lista.get(i).getPrecio()+"</p><br/>");
			out.print("<input type='text' name='txtCant' value='1' style='width:70px'/>");					
			out.print("<input type='submit' name='btnAgrega' value='Comprar' "+
					"style='width:90px; background-color:yellow'/><br/><br/>");
			// 	Datos escondidos para leer del servlet
			out.print("<input type='hidden' name='Precio' value='"+
						lista.get(i).getPrecio()+"'/>");
			out.print("<input type='hidden' name='IDEquipo' value='"+
					lista.get(i).getIDEquipo()+"'/>");
			}
			
			out.print("</form></td>");			
			if(numceldas==4){
				out.print("</tr>");
				numceldas=0;
			}
		}
	}catch(Exception e){}
	%>


	</center>

   
	
	
    <jsp:include page="PaginaMaestra/masterExtranetFooter.jsp"></jsp:include>           
               
</body>
</html>