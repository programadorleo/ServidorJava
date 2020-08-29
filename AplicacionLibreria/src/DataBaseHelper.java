
import java.sql.*;

public class DataBaseHelper {

	private static final String DRIVER ="com.mysql.Driver";
	private static final String URL="jdbc:mysql://localhost/proyectos_java";
	private static final String USUARIO="root";
	private static final String CLAVE="";
	
	
	public int modificarRegistro(String consultaSQL) {
		
		Connection conexion =null;
		Statement sentencia = null;
		int filasAfectadas =0;
		
		try {
			
			Class.forName(DRIVER);
			conexion = DriverManager.getConnection(URL,USUARIO,CLAVE);
			sentencia = conexion.createStatement();
			filasAfectadas = sentencia.executeUpdate(consultaSQL);
			
		catch(ClassNotFoundException e) {}
		
		
	}
}
