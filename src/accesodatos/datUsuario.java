package accesodatos;
import java.sql.*;
import entidades.*;
public class datUsuario {
	
	public static entUsuario VerificarAcceso(String User, String Password)
			throws Exception{
Connection cn = Conexion.Conectar();
entUsuario u = null;
try{
	CallableStatement cst = cn.prepareCall("{call spVerificarAccesoUsuario(?,?)}");
	cst.setString(1, User);
	cst.setString(2, Password);
	ResultSet rs = cst.executeQuery();
	if(rs.next()){
		u = new entUsuario();
		u.setIDUsuario(rs.getInt("IDUsuario"));
		u.setNombres(rs.getString("Nombres"));
		u.setApellidos(rs.getString("Apellidos"));
		u.setUser(rs.getString("User"));
	}
}catch(Exception e){
	throw e;
}finally{cn.close();}		
return u;
}
	public static boolean InsertarUsuario(entUsuario _p) throws Exception{
		Connection cn = Conexion.Conectar();
		boolean Inserto = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spInsertarUsuarios(?,?,?,?,?,?)}");
			cst.setString(1, _p.getUser());
			cst.setString(2, _p.getPassword());
			cst.setString(3, _p.getNombres());
			cst.setString(4, _p.getApellidos());
			cst.setString(5, _p.getTelefono());
			cst.setString(6, _p.getEmail());
			
			int i = cst.executeUpdate();
			if(i>0){ Inserto=true; }
		} catch (Exception e) { throw e;
		}finally{cn.close();}
		return Inserto;
	}
}

