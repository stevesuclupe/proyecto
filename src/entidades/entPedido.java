package entidades;

import java.util.ArrayList;

public class entPedido {
	
	private int IDPedido;
	private String FechaOrden;
	private int IDCliente;
	private int idTarjeta;
	private String UsuarioTarjeta;
	private String NumeroTarjeta;
	private double Total;
	private ArrayList<entOrdenPed> Detalle;
	public int getIDPedido() {
		return IDPedido;
	}
	public void setIDPedido(int iDPedido) {
		IDPedido = iDPedido;
	}
	public String getFechaOrden() {
		return FechaOrden;
	}
	public void setFechaOrden(String fechaOrden) {
		FechaOrden = fechaOrden;
	}
	public int getIDCliente() {
		return IDCliente;
	}
	public void setIDCliente(int iDCliente) {
		IDCliente = iDCliente;
	}
	public int getIdTarjeta() {
		return idTarjeta;
	}
	public void setIdTarjeta(int idTarjeta) {
		this.idTarjeta = idTarjeta;
	}
	public String getUsuarioTarjeta() {
		return UsuarioTarjeta;
	}
	public void setUsuarioTarjeta(String usuarioTarjeta) {
		UsuarioTarjeta = usuarioTarjeta;
	}
	public String getNumeroTarjeta() {
		return NumeroTarjeta;
	}
	public void setNumeroTarjeta(String numeroTarjeta) {
		NumeroTarjeta = numeroTarjeta;
	}
	public double getTotal() {
		return Total;
	}
	public void setTotal(double total) {
		Total = total;
	}
	public ArrayList<entOrdenPed> getDetalle() {
		return Detalle;
	}
	public void setDetalle(ArrayList<entOrdenPed> detalle) {
		Detalle = detalle;
	}
	
	
	



}
