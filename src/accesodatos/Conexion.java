package accesodatos;
import java.sql.*;
public class Conexion {
	public static Connection Conectar() throws Exception{
		Connection cn = null;
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			cn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;"+
						"databaseName=BD_PROYECTO", "sa", "sql");			
		}catch(Exception e){throw e;}
		return cn;		
	}
}
