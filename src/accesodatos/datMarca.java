package accesodatos;
import java.sql.*;
import java.util.ArrayList;
import entidades.*;
public class datMarca {
	public static ArrayList<entMarca> ListarMarca() throws Exception{
		Connection cn = Conexion.Conectar();
		ArrayList<entMarca> Lista = null;
		try {
			CallableStatement cst = cn.prepareCall("{call spListarMarcas()}");
			ResultSet rs = cst.executeQuery();
			Lista = new ArrayList<entMarca>();
			while(rs.next()){
				entMarca m = new entMarca();
				m.setIDMarca(rs.getInt("IDMarca"));
				m.setDescripcion(rs.getString("Descripcion"));
				Lista.add(m);
			}
		} catch (Exception e) { throw e;
		}finally{cn.close();}
		return Lista;
	}
}


