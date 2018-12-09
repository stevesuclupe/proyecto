<%@page import="entidades.entCliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Catalogo</title>
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
	
</head>

</head>
<body>
 <!--==============================header=================================-->

  <div class="header">
  	<div>
  	 
        <div class="subpages-nav">
         
            <nav>  
            
                <ul class="menu">
                
                    <li class="li-none"><a href="Index.jsp">Inicio</a></li>
                      <li><a href="frmLoginCliente.jsp">Acceso</a></li>
                    <li class="current"><a href="frmListaEquipoxMarca.jsp">Modelos</a></li>
                    <li class="li-left li-none"><a href="#">Reportes</a></li>
                    <li><a href="LoginIntranet.jsp">Intranet</a></li>
                    <li><a href="#">Carrito</a></li>
                
                </ul>
                
     
                 
                
            </nav>
            
        </div>
        
    </div>
    
  </div>   

     <%
		HttpSession ses = request.getSession();
		if(ses.getAttribute("cliente")==null){
			response.sendRedirect("frmCliente.jsp");
		}
		entCliente c = (entCliente)ses.getAttribute("cliente");
	%>
	<h2>Bienvenido:</h2><h2>
	<%
		out.print("<h3>"+c.getNombres()+ "  "+c.getApellidos()+"</h3>");
	
	%></h2>
  
    <section id="content"><div class="ic"></div>
    	<div class="page3-row1 pad-2 tabs">
        	<div class="col-8">
            	<h2 class="h2 p2">Marcas:</h2>
                <ul class="list-1 nav">
                	<li class="selected"><a href="#tab-1">Dell</a></li>
                    <li><a href="#tab-2">HP</a></li>
                    <li><a href="#tab-3">Lenovo</a></li>
                    <li><a href="#tab-4">Sony</a></li>
                    <li><a href="#tab-5">Toshiba</a></li>
                    <li><a href="#tab-6">Acer</a></li>
                    <li><a href="#tab-7">Samsung</a></li>
                </ul>
            </div>
            <div class="col-9">
            	<h2 class="h3-2">Modelos:</h2>
                <div id="tab-1" class="tab-content gallery-photo">
                   <div class="inner">
                        <ul id="mycarousel-1" class="jcarousel-skin-tango">
                            <li><a class="plus"     href="images/Dell-Inspiron-3000.jpg"><img src="images/Dell-Inspiron-3000-min.jpg" alt=""></a><a class="plus"     href="images/Dell-Inspiron-3010.jpg"><img src="images/Dell-Inspiron-3010-min.jpg" alt=""></a><a class="plus"     href="images/Dell-Inspiron-3080.jpg"><img src="images/Dell-Inspiron-3080-min.jpg" alt=""></a><a class="plus"     href="images/Dell-Inspiron-3200.jpg"><img src="images/Dell-Inspiron-3200-min.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/Dell-Inspiron-3500.jpg"><img src="images/Dell-Inspiron-3500-min.jpg" alt=""></a><a class="plus"     href="images/Dell-Inspiron-4000.jpg"><img src="images/Dell-Inspiron-4000-min.jpg" alt=""></a><a class="plus"     href="images/Dell-Inspiron-5200.jpg"><img src="images/Dell-Inspiron-5200-min.jpg" alt=""></a><a class="plus"     href="images/Dell-Inspiron-6020.jpg"><img src="images/Dell-Inspiron-6020-min.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/Dell-Inspiron-E410.jpg"><img src="images/Dell-Inspiron-E410-min.jpg" alt=""></a><a class="plus"     href="images/dell1.jpg"><img src="images/dell1-min.jpg" alt=""></a><a class="plus"     href="images/Dell-Inspiron-5521.JPG"><img src="images/Dell-Inspiron-5521-min.jpg" alt=""></a><a class="plus"     href="images/Dell-AndyBrocoli.jpg"><img src="images/Dell-AndyBrocoli-min.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/Dell-Latitude-520.jpg"><img src="images/Dell-Latitude-520-min.jpg" alt=""></a><a class="plus"     href="images/Dell-Ultrabook.jpg"><img src="images/Dell-Ultrabook-min.jpg" alt=""></a><a class="plus"     href="images/Dell-Ultrabook-XPS.jpg"><img src="images/Dell-Ultrabook-XPS-min.jpg" alt=""></a><a class="plus"     href="images/Dell-Vostro-3460.jpg"><img src="images/Dell-Vostro-3460-min.jpg" alt=""></a></li>
                        </ul>
                    </div>
                </div>
                <div id="tab-2" class="tab-content gallery-photo">
                   <div class="inner">
                        <ul id="mycarousel-2" class="jcarousel-skin-tango">
                            <li><a class="plus"     href="images/HP-Compaq-1022.jpg"><img src="images/HP-Compaq-1022-min.jpg" alt=""></a><a class="plus"     href="images/HP-Compaq-4000.jpg"><img src="images/HP-Compaq-4000-min.jpg" alt=""></a><a class="plus"     href="images/HP-Compaq-600.jpg"><img src="images/HP-Compaq-600-min.jpg" alt=""></a><a class="plus"     href="images/HP-Compaq-800.jpg"><img src="images/HP-Compaq-800-min.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/HP-Compaq1234.jpg"><img src="images/HP-Compaq1234-min.jpg" alt=""></a><a class="plus"     href="images/HP-Pavilion-DM3.jpg"><img src="images/HP-Pavilion-DM3-min.jpg" alt=""></a><a class="plus"     href="images/HP-Pavilion-Dv5.jpg"><img src="images/HP-Pavilion-Dv5-min.jpg" alt=""></a><a class="plus"     href="images/HP-Pavilion-Dv6-2.jpg"><img src="images/HP-Pavilion-Dv6-2-min.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/HP-Pavilion-Dv6.jpg"><img src="images/HP-Pavilion-Dv6-min.jpg" alt=""></a><a class="plus"     href="images/HP-Pavilion-Dv7.jpg"><img src="images/HP-Pavilion-Dv7-min.jpg" alt=""></a><a class="plus"     href="images/HP-Pavilion-G4.jpg"><img src="images/HP-Pavilion-G4-min.jpg" alt=""></a><a class="plus"     href="images/HP-Pavilion-G5.jpg"><img src="images/HP-Pavilion-G5-min.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/HP-Pavillion-G.jpg"><img src="images/HP-Pavillion-G-min.jpg" alt=""></a><a class="plus"     href="images/HP-ProBook4420.jpg"><img src="images/HP-ProBook4420-min.jpg" alt=""></a><a class="plus"     href="images/HP-mini.jpg"><img src="images/HP-mini-min.jpg" alt=""></a><a class="plus"     href="images/HP-EliteBook-840.jpg"><img src="images/HP-EliteBook-840-min.jpg" alt=""></a></li>
                        </ul>
                    </div>
                </div>
                <div id="tab-3" class="tab-content gallery-photo">
                   <div class="inner">
                        <ul id="mycarousel-3" class="jcarousel-skin-tango">
                        	<li><a class="plus"     href="images/Lenovo-B470.jpg"><img src="images/Lenovo-B470-min.jpg" alt=""></a><a class="plus"     href="images/Lenovo-B471.jpg"><img src="images/Lenovo-B471-min.jpg" alt=""></a><a class="plus"     href="images/Lenovo-B590.jpg"><img src="images/Lenovo-B590-min.jpg" alt=""></a><a class="plus"     href="images/Lenovo-G400.png"><img src="images/Lenovo-G400-min.png" alt=""></a></li>
                            <li><a class="plus"     href="images/lenovo-G95.jpg"><img src="images/lenovo-G95-min.jpg" alt=""></a><a class="plus"     href="images/LENOVO-U350.jpg"><img src="images/LENOVO-U350-min.jpg" alt=""></a><a class="plus"     href="images/Lenovo-Z500.jpg"><img src="images/Lenovo-Z500-min.jpg" alt=""></a><a class="plus"     href="images/Lenovo-G50.jpg"><img src="images/Lenovo-G50-min.jpg" alt=""></a></li>
                        	 <li><a class="plus"     href="images/Lenovo-Gamer.jpg"><img src="images/Lenovo-Gamer-min.jpg" alt=""></a><a class="plus"     href="images/Lenovo-Ideapad-Flex.jpg"><img src="images/Lenovo-Ideapad-Flex-min.jpg" alt=""></a><a class="plus"     href="images/Lenovo-Ideapad-S200.jpg"><img src="images/Lenovo-Ideapad-S200-min.jpg" alt=""></a><a class="plus"     href="images/lenovo-Ideapad-Y550.jpg"><img src="images/lenovo-Ideapad-Y550-min.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/Lenovo-Ideapad-Yoga.jpg"><img src="images/Lenovo-Ideapad-Yoga-min.jpg" alt=""></a><a class="plus"     href="images/Lenovo-N500.jpg"><img src="images/Lenovo-N500-min.jpg" alt=""></a><a class="plus"     href="images/lenovo-Esensial.jpg"><img src="images/lenovo-Esensial-min.jpg" alt=""></a><a class="plus"     href="images/Lenovo-IdeaPad-500.jpg"><img src="images/Lenovo-IdeaPad-500-min.jpg" alt=""></a></li>
                        </ul>
                    </div>
                </div>
                <div id="tab-4" class="tab-content gallery-photo">
                   <div class="inner">
                        <ul id="mycarousel-4" class="jcarousel-skin-tango">
                        	<li><a class="plus"     href="images/portfolio-12-big.jpg"><img src="images/portfolio-12.jpg" alt=""></a><a class="plus"     href="images/portfolio-13-big.jpg"><img src="images/portfolio-13.jpg" alt=""></a><a class="plus"     href="images/portfolio-14-big.jpg"><img src="images/portfolio-14.jpg" alt=""></a><a class="plus"     href="images/portfolio-2-big.jpg"><img src="images/portfolio-2.jpg" alt=""></a></li>
                             <li><a class="plus"     href="images/portfolio-1-big.jpg"><img src="images/portfolio-1.jpg" alt=""></a><a class="plus"     href="images/portfolio-2-big.jpg"><img src="images/portfolio-2.jpg" alt=""></a><a class="plus"     href="images/portfolio-3-big.jpg"><img src="images/portfolio-3.jpg" alt=""></a><a class="plus"     href="images/portfolio-4-big.jpg"><img src="images/portfolio-4.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-5-big.jpg"><img src="images/portfolio-5.jpg" alt=""></a><a class="plus"     href="images/portfolio-6-big.jpg"><img src="images/portfolio-6.jpg" alt=""></a><a class="plus"     href="images/portfolio-7-big.jpg"><img src="images/portfolio-7.jpg" alt=""></a><a class="plus"     href="images/portfolio-8-big.jpg"><img src="images/portfolio-8.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-9-big.jpg"><img src="images/portfolio-9.jpg" alt=""></a><a class="plus"     href="images/portfolio-10-big.jpg"><img src="images/portfolio-10.jpg" alt=""></a><a class="plus"     href="images/portfolio-11-big.jpg"><img src="images/portfolio-11.jpg" alt=""></a><a class="plus"     href="images/portfolio-1-big.jpg"><img src="images/portfolio-1.jpg" alt=""></a></li>
                        </ul>
                    </div>
                </div>
                <div id="tab-5" class="tab-content gallery-photo">
                   <div class="inner">
                        <ul id="mycarousel-5" class="jcarousel-skin-tango">
                        	 <li><a class="plus"     href="images/portfolio-1-big.jpg"><img src="images/portfolio-1.jpg" alt=""></a><a class="plus"     href="images/portfolio-2-big.jpg"><img src="images/portfolio-2.jpg" alt=""></a><a class="plus"     href="images/portfolio-3-big.jpg"><img src="images/portfolio-3.jpg" alt=""></a><a class="plus"     href="images/portfolio-4-big.jpg"><img src="images/portfolio-4.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-5-big.jpg"><img src="images/portfolio-5.jpg" alt=""></a><a class="plus"     href="images/portfolio-6-big.jpg"><img src="images/portfolio-6.jpg" alt=""></a><a class="plus"     href="images/portfolio-7-big.jpg"><img src="images/portfolio-7.jpg" alt=""></a><a class="plus"     href="images/portfolio-8-big.jpg"><img src="images/portfolio-8.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-9-big.jpg"><img src="images/portfolio-9.jpg" alt=""></a><a class="plus"     href="images/portfolio-10-big.jpg"><img src="images/portfolio-10.jpg" alt=""></a><a class="plus"     href="images/portfolio-11-big.jpg"><img src="images/portfolio-11.jpg" alt=""></a><a class="plus"     href="images/portfolio-1-big.jpg"><img src="images/portfolio-1.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-12-big.jpg"><img src="images/portfolio-12.jpg" alt=""></a><a class="plus"     href="images/portfolio-13-big.jpg"><img src="images/portfolio-13.jpg" alt=""></a><a class="plus"     href="images/portfolio-14-big.jpg"><img src="images/portfolio-14.jpg" alt=""></a><a class="plus"     href="images/portfolio-2-big.jpg"><img src="images/portfolio-2.jpg" alt=""></a></li>
                        </ul>
                    </div>
                </div>
                <div id="tab-6" class="tab-content gallery-photo">
                   <div class="inner">
                        <ul id="mycarousel-6" class="jcarousel-skin-tango">
                            <li><a class="plus"     href="images/portfolio-12-big.jpg"><img src="images/portfolio-12.jpg" alt=""></a><a class="plus"     href="images/portfolio-13-big.jpg"><img src="images/portfolio-13.jpg" alt=""></a><a class="plus"     href="images/portfolio-14-big.jpg"><img src="images/portfolio-14.jpg" alt=""></a><a class="plus"     href="images/portfolio-2-big.jpg"><img src="images/portfolio-2.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-1-big.jpg"><img src="images/portfolio-1.jpg" alt=""></a><a class="plus"     href="images/portfolio-2-big.jpg"><img src="images/portfolio-2.jpg" alt=""></a><a class="plus"     href="images/portfolio-3-big.jpg"><img src="images/portfolio-3.jpg" alt=""></a><a class="plus"     href="images/portfolio-4-big.jpg"><img src="images/portfolio-4.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-5-big.jpg"><img src="images/portfolio-5.jpg" alt=""></a><a class="plus"     href="images/portfolio-6-big.jpg"><img src="images/portfolio-6.jpg" alt=""></a><a class="plus"     href="images/portfolio-7-big.jpg"><img src="images/portfolio-7.jpg" alt=""></a><a class="plus"     href="images/portfolio-8-big.jpg"><img src="images/portfolio-8.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-9-big.jpg"><img src="images/portfolio-9.jpg" alt=""></a><a class="plus"     href="images/portfolio-10-big.jpg"><img src="images/portfolio-10.jpg" alt=""></a><a class="plus"     href="images/portfolio-11-big.jpg"><img src="images/portfolio-11.jpg" alt=""></a><a class="plus"     href="images/portfolio-1-big.jpg"><img src="images/portfolio-1.jpg" alt=""></a></li>
                        </ul>
                    </div>
                </div>
                <div id="tab-7" class="tab-content gallery-photo">
                   <div class="inner">
                        <ul id="mycarousel-7" class="jcarousel-skin-tango">
                            <li><a class="plus"     href="images/portfolio-5-big.jpg"><img src="images/portfolio-5.jpg" alt=""></a><a class="plus"     href="images/portfolio-6-big.jpg"><img src="images/portfolio-6.jpg" alt=""></a><a class="plus"     href="images/portfolio-7-big.jpg"><img src="images/portfolio-7.jpg" alt=""></a><a class="plus"     href="images/portfolio-8-big.jpg"><img src="images/portfolio-8.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-9-big.jpg"><img src="images/portfolio-9.jpg" alt=""></a><a class="plus"     href="images/portfolio-10-big.jpg"><img src="images/portfolio-10.jpg" alt=""></a><a class="plus"     href="images/portfolio-11-big.jpg"><img src="images/portfolio-11.jpg" alt=""></a><a class="plus"     href="images/portfolio-1-big.jpg"><img src="images/portfolio-1.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-12-big.jpg"><img src="images/portfolio-12.jpg" alt=""></a><a class="plus"     href="images/portfolio-13-big.jpg"><img src="images/portfolio-13.jpg" alt=""></a><a class="plus"     href="images/portfolio-14-big.jpg"><img src="images/portfolio-14.jpg" alt=""></a><a class="plus"     href="images/portfolio-2-big.jpg"><img src="images/portfolio-2.jpg" alt=""></a></li>
                            <li><a class="plus"     href="images/portfolio-1-big.jpg"><img src="images/portfolio-1.jpg" alt=""></a><a class="plus"     href="images/portfolio-2-big.jpg"><img src="images/portfolio-2.jpg" alt=""></a><a class="plus"     href="images/portfolio-3-big.jpg"><img src="images/portfolio-3.jpg" alt=""></a><a class="plus"     href="images/portfolio-4-big.jpg"><img src="images/portfolio-4.jpg" alt=""></a></li>
                        </ul>
                    </div>
                </div>
            </div>      
        </div>
    </section> 
<!--==============================footer=================================-->
 <footer>
        <span><strong>© Sistema de Ventas de Laptops</strong>
        </span>
        </footer>

</body>
</html>