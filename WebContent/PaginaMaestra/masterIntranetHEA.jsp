<%@page import="accesodatos.datMarca"%>
<%@page import="entidades.entMarca"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entidades.entCliente"%>

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
                    <li><a href="frmVenta.jsp">Carrito</a></li>
                  <li>
				<%
					HttpSession ses = request.getSession();
					if(ses.getAttribute("cliente")!=null){
						entCliente c = (entCliente)ses.getAttribute("cliente");
						out.print("<h3>"+c.getNombres()+ "  "+c.getApellidos()+"</h3>");
					}
				%>
				
				</li>
                </ul>
                
      
               
                
            </nav>
        </div>
    </div>
  </div>   
     
	<br/><br/>
    
        <h3>
	
            	
                	<%
		ArrayList<entMarca> lista = datMarca.ListarMarca();
		for(int i=0;i<lista.size();i++){
			out.print("<li><span><a href='frmListaEquipoxMarca.jsp?idMarca="+
					lista.get(i).getIDMarca()+"'>"+
					lista.get(i).getDescripcion()+"</a></span></li>");
		}
		%>
	</h3>