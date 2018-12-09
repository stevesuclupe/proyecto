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

import accesodatos.datPedido;
import entidades.entCliente;

import entidades.entOrdenPed;
import entidades.entPedido;

/**
 * Servlet implementation class sGuardarPedido
 */
@WebServlet("/sGuardarPedido")
public class sGuardarPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sGuardarPedido() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {
			HttpSession ses =request.getSession();
			 entCliente c=(entCliente)ses.getAttribute("cliente");
			 ArrayList<entOrdenPed> detalle =(ArrayList<entOrdenPed>)ses.getAttribute("Venta");
			 int idTarjeta = Integer.parseInt(request.getParameter("cboTarjeta"));
			 double total=0;
			 
			 entPedido p = new entPedido();
			 p.setIDCliente(c.getIDCliente());
			 p.setIdTarjeta(idTarjeta);
			 p.setUsuarioTarjeta(request.getParameter("txtUsuarioTarjeta"));
			 p.setNumeroTarjeta(request.getParameter("txtNumeroTarjeta"));
			 p.setTotal(total);
			 p.setDetalle(detalle);
			
			int i  = datPedido.InsertarPedido(p);
		}catch(Exception e){
	}
}
}
