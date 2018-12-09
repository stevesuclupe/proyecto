package accesodatos;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Types;
import java.util.ArrayList;


import entidades.entOrdenPed;
import entidades.entPedido;
public class datPedido {

	public static int InsertarPedido(entPedido p) throws Exception{
		 Connection cn = Conexion.Conectar();
		try{
			CallableStatement cst = cn.prepareCall("{call spInsertarPedido(?,?,?,?,?,?)}");
			cst.setInt(1, p.getIDCliente());
			cst.setInt(2, p.getIdTarjeta());
			cst.setString(3, p.getUsuarioTarjeta());
			cst.setString(4, p.getNumeroTarjeta());
			cst.setDouble(5, p.getTotal());
			cst.setDouble(6, 0);
			cst.registerOutParameter("PKCreado", Types.INTEGER);
			
			cst.executeUpdate();
			int PKPedido = cst.getInt("PKCreado");
			
			
			ArrayList<entOrdenPed> detalle=p.getDetalle();
			for(int i =0;i<detalle.size();i++){
				datPedido.InseratrDPedido(detalle.get(i), PKPedido);
			}
			return PKPedido;
		
		} catch (Exception e){
			throw e;
		}finally {}		
	}
	public static boolean InseratrDPedido(entOrdenPed d, int PKPedido) throws Exception{
		Connection cn = Conexion.Conectar();
		try{
			CallableStatement cst = cn.prepareCall("{call spInsertarDPedido(?,?,?,?,?)}");
			cst.setInt(1, d.getEquipo().getIDEquipo());
			cst.setInt(2, d.getCantidad());
			cst.setDouble(3, d.getPrecio_Unitario());
			cst.setDouble(4, d.getDescuento());
			cst.setInt(5, PKPedido);
			cst.executeUpdate();
			return true;
		} catch (Exception e){
			throw e;
		}finally {}		
	}
}

	

