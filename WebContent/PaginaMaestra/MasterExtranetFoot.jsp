<%@page import="accesodatos.datMarca"%>
<%@page import="entidades.entMarca"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		
		<ul>
		<%
		ArrayList<entMarca> lista = datMarca.ListarMarca();
		for(int i=0;i<lista.size();i++){
			out.print("<li><span><a href='frmListaEquipoxMarca.jsp?IDMarca="+
					lista.get(i).getIDMarca()+"'>"+
					lista.get(i).getDescripcion()+"</a></span></li>");
		}
		%>
		</ul>
		
		
</body>
</html>