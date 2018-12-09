package entidades;

public class entOrdenPed {
	
	private double Precio_Unitario;
	private int Cantidad;
	private double Descuento;
	private entEquipo Equipo;
	
	public double getPrecio_Unitario() {
		return Precio_Unitario;
	}
	public void setPrecio_Unitario(double precio_Unitario) {
		Precio_Unitario = precio_Unitario;
	}
	public int getCantidad() {
		return Cantidad;
	}
	public void setCantidad(int cantidad) {
		Cantidad = cantidad;
	}
	public double getDescuento() {
		return Descuento;
	}
	public void setDescuento(double descuento) {
		Descuento = descuento;
	}
	public entEquipo getEquipo() {
		return Equipo;
	}
	public void setEquipo(entEquipo equipo) {
		Equipo = equipo;
	}
	

	


}
