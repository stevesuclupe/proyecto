<!DOCTYPE html>
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

    <title>DASHGUM - Bootstrap Admin Template</title>

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
<jsp:include page="PaginaMaestra/MasterIntranetHead.jsp"></jsp:include>

     <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Lista de Laptops</h3>
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                      <h4><i class="fa fa-angle-right"></i></h4>
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>
                              <tr>
                              
                                  
                                  <th class="numeric">Marca</th>
                                  <th class="numeric">Modelo</th>
                                  <th class="numeric">Serie</th>
                                  <th class="numeric">Stock</th>
                                  <th class="numeric">Precio</th>
                                  <th>Proveedor</th>
                                 
                              </tr>
                              </thead>
                              

				<tbody>
				<%
		// 		try{
					ArrayList<entEquipo> Lista = datEquipo.ListarEquipo();
					for(int i=0;i<Lista.size();i++){
						out.print("<tr>");
						out.print("<td>"+Lista.get(i).getMarca().getDescripcion()+"</td>");
						out.print("<td>"+Lista.get(i).getModelo()+"</td>");
						out.print("<td>"+Lista.get(i).getSerie()+"</td>");
						out.print("<td>"+Lista.get(i).getStock()+"</td>");
						out.print("<td>"+Lista.get(i).getPrecio()+"</td>");
						out.print("<td>"+Lista.get(i).getProveedor().getRazonSocial()+"</td>");
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
		  	<jsp:include page="PaginaMaestra/MasterIntranetFooter.jsp"></jsp:include>
		  	
		  	
		  	




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