<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8" %>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>


<%
	String isbn = request.getParameter("isbn");
	String titulo = request.getParameter("titulo");
	String categoria = request.getParameter("categoria");
	
	Connection conexion =null;
	Statement sentencia=null;
	
	int filas=0;
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		conexion = DriverManager.getConnection("jdbc:mysql://localhost/proyectos_java","root","");
		sentencia = conexion.createStatement();
		
		String consultaSQL = "insert into Libros(isb,titulo,categoria)values";
		consultaSQL+="("+isbn+"','"+titulo+"','"+categoria+"')";
		
		filas = sentencia.executeUpdate(consultaSQL);
		
		response.sendRedirect("MostrarLibros.jsp");
		
	}catch (ClassNotFoundException e){
		
	   System.out.println("Error en la carga del Driver"+ e.getMessage());
	
	}catch(SQLException e){
		System.out.println("Error accediendo a la base de datos"+ e.getMessage());
	
	}finally{
		
		if(sentencia!=null){
			
			try{sentencia.close();}
			catch(SQLException e)
			{System.out.println("Error al cerrar  la sentencia"+ e.getMessage());}
		}
		
	}
	


%>