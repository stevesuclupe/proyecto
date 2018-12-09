package accesodatos;
import java.sql.*;
import java.util.ArrayList;

import entidades.*;

public class datEquipo {
	
	public static ArrayList<entEquipo> ListarEquipo() throws Exception{
		Connection cn = Conexion.Conectar();
		ArrayList<entEquipo> Lista = null;
		try {
			CallableStatement cst = cn.prepareCall("{call spListarEquipos()}");
			ResultSet rs = cst.executeQuery();
			Lista = new ArrayList<entEquipo>();
			while(rs.next()){
				entEquipo e = new entEquipo();				
				e.setIDEquipo(rs.getInt("IDEquipo"));
				e.setModelo(rs.getString("Modelo"));
				e.setSerie(rs.getString("Serie"));
				e.setStock(rs.getInt("Stock"));
				e.setPrecio(rs.getDouble("Precio"));
				e.setImagen(rs.getString("Imagen"));
					entMarca m = new entMarca();
					m.setIDMarca(rs.getInt("IDMarca"));
					m.setDescripcion(rs.getString("DMarca"));
				e.setMarca(m);
				entProveedor p = new entProveedor();
				p.setIDProveedor(rs.getInt("IDProveedor"));
				p.setRazonSocial(rs.getString("DProveedor"));
			e.setProveedor(p);
			
				Lista.add(e);
			}
		} catch (Exception e) { throw e;
		}finally{cn.close();}
		return Lista;
	} 

	
	public static boolean InsertarEquipo(entEquipo _e) throws Exception{
		Connection cn = Conexion.Conectar();
		boolean Inserto = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spInsertarEquipo(?,?,?,?,?,?,?)}");
			cst.setString(1, _e.getModelo());
			cst.setString(2, _e.getSerie());
			cst.setInt(3, _e.getStock());
			cst.setDouble(4, _e.getPrecio());
			cst.setInt(5, _e.getMarca().getIDMarca());
			cst.setInt(6, _e.getProveedor().getIDProveedor());
			cst.setString(7, _e.getImagen());
			int i = cst.executeUpdate();
			if(i>0){ Inserto=true; }
		} catch (Exception e) { throw e;
		}finally{cn.close();}
		return Inserto;
	}

	public static boolean EditarEquipo(entEquipo _e) throws Exception{
		Connection cn = Conexion.Conectar();
		boolean Inserto = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spEditarEquipo(?,?,?,?,?,?,?,?)}");
			cst.setString(1, _e.getModelo());
			cst.setString(2, _e.getSerie());
			cst.setInt(3, _e.getStock());
			cst.setDouble(4, _e.getPrecio());
			cst.setInt(5, _e.getMarca().getIDMarca());
			cst.setInt(6, _e.getProveedor().getIDProveedor());
			cst.setString(7, _e.getImagen());
			cst.setInt(8, _e.getIDEquipo());
			int i = cst.executeUpdate();
			if(i>0){ Inserto=true; }
		} catch (Exception e) { throw e;
		}finally{cn.close();}
		return Inserto;
	}	
	public static entEquipo DevolverEquipo(int idEqui) throws Exception{
		Connection cn = Conexion.Conectar();
		entEquipo e = null;
		try {
			CallableStatement cst = cn.prepareCall("{call spDevolverEquipo(?)}");
			cst.setInt(1, idEqui);
			ResultSet rs = cst.executeQuery();
			if(rs.next()){
				e = new entEquipo();	
				e.setIDEquipo(rs.getInt("IDEquipo"));
				e.setModelo(rs.getString("Modelo"));
				e.setSerie(rs.getString("Serie"));
				e.setStock(rs.getInt("Stock"));
				e.setPrecio(rs.getDouble("Precio"));
				e.setImagen(rs.getString("Imagen"));
					entMarca m = new entMarca();
					m.setIDMarca(rs.getInt("IDMarca"));
					m.setDescripcion(rs.getString("DMarca"));
				e.setMarca(m);
				entProveedor p = new entProveedor();
				p.setIDProveedor(rs.getInt("IDProveedor"));
				p.setRazonSocial(rs.getString("DProveedor"));
			e.setProveedor(p);
			}
		} catch (Exception h) { throw h;
		}finally{cn.close();}
		return e;
	} 	
	
	public static ArrayList<entEquipo> ListarEquipoxMarca(int IDMarca) throws Exception{
		Connection cn = Conexion.Conectar();
		ArrayList<entEquipo> Lista = null;
		try {
			CallableStatement cst = cn.prepareCall("{call spListarEquiposxMarca(?)}");
			cst.setInt(1, IDMarca);
			ResultSet rs = cst.executeQuery();
			Lista = new ArrayList<entEquipo>();
			while(rs.next()){
				entEquipo e = new entEquipo();				
				e.setIDEquipo(rs.getInt("IDEquipo"));
				e.setModelo(rs.getString("Modelo"));
				e.setSerie(rs.getString("Serie"));
				e.setStock(rs.getInt("Stock"));
				e.setPrecio(rs.getDouble("Precio"));
				e.setImagen(rs.getString("Imagen"));
					entMarca m = new entMarca();
					m.setIDMarca(rs.getInt("IDMarca"));
					m.setDescripcion(rs.getString("DMarca"));
				e.setMarca(m);
				entProveedor p = new entProveedor();
				p.setIDProveedor(rs.getInt("IDProveedor"));
				p.setRazonSocial(rs.getString("DProveedor"));
			e.setProveedor(p);
				Lista.add(e);
			}
		} catch (Exception e) { throw e;
		}finally{cn.close();}
		return Lista;
	} 	
	
}

