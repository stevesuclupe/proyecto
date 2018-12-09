package accesodatos;
import java.sql.*;
import java.util.ArrayList;
import entidades.*;
public class datProveedor {
	public static ArrayList<entProveedor> ListarProveedores() throws Exception{
		Connection cn = Conexion.Conectar();
		ArrayList<entProveedor> Lista = null;
		try {
			CallableStatement cst = cn.prepareCall("{call spListarProveedores()}");
			ResultSet rs = cst.executeQuery();
			Lista = new ArrayList<entProveedor>();
			while(rs.next()){
				entProveedor pr = new entProveedor();
				pr.setIDProveedor(rs.getInt("idProveedor"));
				pr.setRazonSocial(rs.getString("RazonSocial"));
				pr.setDirProveedor(rs.getString("DirProveedor"));
				pr.setRUC(rs.getString("RUC"));
				pr.setTelefono(rs.getString("Telefono"));
				Lista.add(pr);
			}
		} catch (Exception e) { throw e;
		}finally{cn.close();}
		return Lista;
	}
}