package entidades;

public class entEquipo {

	private int IDEquipo;
	private String Modelo;
	private String Serie;
	private int Stock;
	private double Precio;
	private entMarca Marca;
	private entProveedor Proveedor;
	private String Imagen;

	public int getIDEquipo() {
		return IDEquipo;
	}
	public void setIDEquipo(int iDEquipo) {
		IDEquipo = iDEquipo;
	}
	public String getModelo() {
		return Modelo;
	}
	public void setModelo(String modelo) {
		Modelo = modelo;
	}
	public String getSerie() {
		return Serie;
	}
	public void setSerie(String serie) {
		Serie = serie;
	}
	public int getStock() {
		return Stock;
	}
	public void setStock(int stock) {
		Stock = stock;
	}
	public double getPrecio() {
		return Precio;
	}
	public void setPrecio(double precio) {
		Precio = precio;
	}

	public entMarca getMarca() {
		return Marca;
	}
	public void setMarca(entMarca marca) {
		Marca = marca;
	}
	public entProveedor getProveedor() {
		return Proveedor;
	}
	public void setProveedor(entProveedor proveedor) {
		Proveedor = proveedor;
	}
	public String getImagen() {
		return Imagen;
	}
	public void setImagen(String imagen) {
		Imagen = imagen;
	}
	
	

	
}
