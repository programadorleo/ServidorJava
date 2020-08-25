
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>

<%

	String isbn= request.getParameter("isbn");
	String titulo= request.getParameter("titulo");
	String categoria = request.getParameter("categoria");

	Connection conexion =null;
	Statement sentencia = null;
	
	int filas =0;
	
	String url = "jdbc:mysql://localhost/proyecto_java";
	String user= "root";
	String password = "";
	
	try {
						
		Class.forName("com.mysql.jdbc.Driver");
		conexion = DriverManager.getConnection(url,user,password);
		
		sentencia = conexion.createStatement();
		
		String consultaSQL = "insert int libros(isbn,titulo,categoria)values";
		consultaSQL +="('" +isbn+"',"+ titulo +"'','"+categoria +"')";
		
		filas = sentencia.executeUpdate(consultaSQL);
		
		response.sendRedirect("MostrarLibros.jsp");
							
	}catch(ClassNotFoundException e){
		
		System.out.println("Error en la carga del driver"+e.getMessage());
	
	}catch(SQLException e){
		
		System.out.println("Error accediendo a la base de datos"+ e.getMessage());
	
	}finally{
		
		if(sentencia!=null){
			
			try {sentencia.close();}
			catch(SQLException e){
				System.out.println("Error cerrando la sentencia"+ e.getMessage());
			}
			if(conexion!=null){
				
				try{conexion.close();}
				catch (SQLException e){
					System.out.println("Error cerrando la conexion"+ e.getMessage());
					}
			}
		}
	}

%>