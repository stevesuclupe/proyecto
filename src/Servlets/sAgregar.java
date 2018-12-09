package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import accesodatos.datEquipo;
import entidades.entOrdenPed;


@WebServlet("/sAgregar")
public class sAgregar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public sAgregar() {
        super();     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {
			HttpSession ses = request.getSession();
			ArrayList<entOrdenPed> lista = null;
			if(ses.getAttribute("Venta")!=null){
				lista = (ArrayList<entOrdenPed>)ses.getAttribute("Venta");
			}else{
				lista = new ArrayList<entOrdenPed>();
			}
			entOrdenPed det = new entOrdenPed();
			det.setDescuento(Double.parseDouble(request.getParameter("Descuento")));
			det.setCantidad(Integer.parseInt(request.getParameter("txtCantidad")));
			det.setPrecio_Unitario(Double.parseDouble(request.getParameter("Precio_Unitario")));
			int idEqui = Integer.parseInt(request.getParameter("IDEquipo"));
			det.setEquipo(datEquipo.DevolverEquipo(idEqui));
			lista.add(det);
			ses.setAttribute("Venta", lista);
			response.sendRedirect("frmVenta.jsp");
		} catch (Exception e) {
		}
	}
		
		
	}

