package accesodatos;
import java.sql.*;
import java.util.ArrayList;

import entidades.entCliente;
public class datCliente {

	public static entCliente VerificarAcceso(String Usuario, String Password) throws Exception{
		Connection cn = Conexion.Conectar();
		entCliente c = null;
		try{
			CallableStatement cst = cn.prepareCall("{call spVerificarAccesoCliente(?,?)}");
			cst.setString(1, Usuario);
			cst.setString(2, Password);
			ResultSet rs = cst.executeQuery();
			if(rs.next()){
				c = new entCliente();
				c.setIDCliente(rs.getInt("IDCliente"));
				c.setNombres(rs.getString("Nombres"));
				c.setApellidos(rs.getString("Apellidos"));
				c.setDireccion(rs.getString("Direccion"));
				c.setTelefono(rs.getString("Telefono"));
				c.setDireccion(rs.getString("Direccion"));
				c.setUsuario(rs.getString("Usuario"));
				c.setFechaRegistro(rs.getString("FechaRegistro"));
				c.setDNI(rs.getInt("DNI"));
				c.setFoto(rs.getString("Foto"));
			}
		}catch(Exception e){
			throw e;
		}finally{cn.close();}		
		return c;
	}
	
	public static ArrayList<entCliente> ListarClientes() throws Exception{
		Connection cn = Conexion.Conectar();
		ArrayList<entCliente> Lista = null;
		try {
			CallableStatement cst = cn.prepareCall("{call spListarClientes()}");
			ResultSet rs = cst.executeQuery();
			Lista = new ArrayList<entCliente>();
			while(rs.next()){
				entCliente c = new entCliente();
				c.setIDCliente(rs.getInt("IDCliente"));
				c.setNombres(rs.getString("Nombres"));
				c.setApellidos(rs.getString("Apellidos"));
				c.setDireccion(rs.getString("Direccion"));
				c.setTelefono(rs.getString("Telefono"));
				c.setDireccion(rs.getString("Direccion"));
				c.setUsuario(rs.getString("Usuario"));
				c.setFechaRegistro(rs.getString("FechaRegistro"));
				c.setFechaModificacion(rs.getString("FechaModificacion"));
				c.setDNI(rs.getInt("DNI"));
				c.setFoto(rs.getString("Foto"));
				Lista.add(c);
			}
		} catch (Exception e) { throw e;
		}finally{cn.close();}
		return Lista;
	}
	public static boolean InsertarCliente(entCliente _p) throws Exception{
		Connection cn = Conexion.Conectar();
		boolean Inserto = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spInsertarClientes(?,?,?,?,?,?,?)}");
			cst.setString(1, _p.getNombres());
			cst.setString(2, _p.getApellidos());
			cst.setString(3, _p.getDireccion());
			cst.setString(4, _p.getTelefono());
			cst.setString(5, _p.getUsuario());
			cst.setString(6, _p.getPassword());
			cst.setInt(7, _p.getDNI());
			int i = cst.executeUpdate();
			if(i>0){ Inserto=true; }
		} catch (Exception e) { throw e;
		}finally{cn.close();}
		return Inserto;
	}
}
