<!DOCTYPE html>
<html lang="en">
<head>
    <title>Venta de Laptops</title>
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
</head>
<body>
<jsp:include page="PaginaMaestra/masterExtranetHead.jsp"></jsp:include>

    <div id="slide">		
            <div class="slider">
            
                <ul class="items">
                    <li><img src="images/Banner6.jpg" alt="" /></li>
                    <li><img src="images/image4-4.jpg" alt="" /></li>
                    <li><img src="images/banner3-3.jpg" alt="" /></li>
                    <li><img src="images/image5-5.jpg" alt="" /></li>
                    <li><img src="images/banner5-5.jpg" alt="" /></li>
                </ul>
            </div>
            <ul class="pags">
                <li><a href="frmCatalogo.jsp"><strong>0</strong>1</a></li>
                <li><a href="frmCatalogo.jsp"><strong>0</strong>2</a></li>
                <li><a href="frmCatalogo.jsp"><strong>0</strong>3</a></li>
                <li><a href="frmCatalogo.jsp"><strong>0</strong>4</a></li>
                <li><a href="frmCatalogo.jsp"><strong>0</strong>5</a></li>
            </ul>	
        </div>
    </div>
  </div>   
<!--==============================content================================-->
    <section id="content"><div class="ic"></div>
        <div class="gallery-block">
        	<h2>Fotos destacadas:</h2>
            <ul id="mycarousel" class="jcarousel-skin-tango gallery-photo">
            	<li><a href="frmCatalogo.jsp"><img src="images/Dell Inspiron 3005.jpg" alt=""></a><a href="frmCatalogo.jsp"><img src="images/Lenovo G400.png" alt=""></a></li>
                <li><a href="frmCatalogo.jsp"><img src="images/HP Compaq 600.jpg" alt=""></a><a href="frmCatalogo.jsp"><img src="images/HP Compaq 800.jpg" alt=""></a></li>
                <li><a href="frmCatalogo.jsp"><img src="images/Dell Inspiron 3010.jpg" alt=""></a><a href="frmCatalogo.jsp"><img src="images/Lenovo Z500-59.jpg" alt=""></a></li>
                <li><a href="frmCatalogo.jsp"><img src="images/Lenovo G560.jpg" alt=""></a><a href="frmCatalogo.jsp"><img src="images/HP Compaq 1022.jpg" alt=""></a></li>
                <li><a href="frmCatalogo.jsp"><img src="images/Dell Inspiron 3080.jpg" alt=""></a><a href="frmCatalogo.jsp"><img src="images/Lenovo B50-45.png" alt=""></a></li>
                <li><a href="frmCatalogo.jsp"><img src="images/HP Pavilion Dv7.jpg" alt=""></a><a href="frmCatalogo.jsp"><img src="images/HP Pavilion Dv6.png" alt=""></a></li>
                <li><a href="frmCatalogo.jsp"><img src="images/Lenovo G560.jpg" alt=""></a><a href="frmCatalogo.jsp"><img src="images/HP Compaq 1022.jpg" alt=""></a></li>
                <li><a href="frmCatalogo.jsp"><img src="images/Dell Inspiron 3080.jpg" alt=""></a><a href="frmCatalogo.jsp"><img src="images/Lenovo B50-45.png" alt=""></a></li>
                <li><a href="frmCatalogo.jsp"><img src="images/HP Pavilion Dv7.jpg" alt=""></a><a href="frmCatalogo.jsp"><img src="images/HP Pavilion Dv6.png" alt=""></a></li>
                  <li><a href="frmCatalogo.jsp"><img src="images/Dell Inspiron 3500.jpg" alt=""></a><a href="frmCatalogo.jsp"><img src="images/Dell-Inspiron 3000.jpg" alt=""></a></li>
            </ul>
        </div>
        <div class="page1-row1 pad-1">
        	<div class="col-1">
            	<h2 class="h3 p2">Marcas:</h2>
                <ul class="list-1">
                	<li><a href="frmCatalogo.jsp">DELL</a>     <a href="#"><img src="images/logodell.jpg" style='width:23px; height:23px'></a></li>
                    <li><a href="frmCatalogo.jsp">HP</a>       <a href="#">     <img src="images/logohp.jpg" style='width:23px; height:23px'></a></li>
                    <li><a href="frmCatalogo.jsp">Lenovo</a>   <a href="#">    <img src="images/logolenovo.jpg" style='width:23px; height:23px'></a></li>
                    <li><a href="frmCatalogo.jsp">VAIO</a>     <a href="#">    <img src="images/logovaio.jpg" style='width:23px; height:23px'></a></li>
                    <li><a href="frmCatalogo.jsp">Toshiba</a>  <a href="#"> <img src="images/logotoshiba.jpg" style='width:23px; height:23px'></a></li>
                    <li><a href="frmCatalogo.jsp">Samsung</a>  <a href="#"> <img src="images/logosamsung.jpg" style='width:23px; height:23px'></a></li>
                   
                </ul>
            </div>
            <div class="col-2">
            	<h2 class="h2 p2">Mas Informacion:</h2>
                <p class="p1">La laptop perfecta depende de las necesidades informaticas de aquel que la describa.Los nuevos <a href="marcas.jsp" class="link" target="_blank">modelos</a> de laptops ofrecen una diversidad de opciones que se ajustan a las exigencias tecnologicas de los usuarios, entregando un producto  
                de buena calidad &amp; un buen funcionamiento.</p>
				<p>Nos diferenciamos en el mercado por ofrecer a nuestros clientes un equipo de alta calidad lo que garantiza la efectividad, rapidez, eficiencia. </p>
                <a href="Vision.jsp" class="link-1 link-1-pad bot-1">Continuar Leyendo</a>
                <div class="clear"></div>
                          </div>  
            <div class="col-3">
            	<h2 class="h2 p2">Contactanos:</h2>
                <div class="adr">
                    <p class="p3"><strong>Freephone:</strong> <span class="clr-1">+1 800 559 6580</span><br>
                    <strong>Telephone:</strong> <span class="clr-1">+1 800 603 6035</span><br>
                    <strong>Fax:</strong> <span class="clr-1">+1 800 889 9898</span><br>
                    <strong>E-mail:</strong> <a href="#" class="clr-1">mail@demolink.org</a></p>
                    <p class="clr-1">9870St Vincent Place,<br>Glasgow, DC 45 Fr 45.</p> 
                </div>
            </div>      
        </div>
    </section> 
  
  
  
<jsp:include page="PaginaMaestra/masterExtranetFooter.jsp"></jsp:include>             
</body>
</html>