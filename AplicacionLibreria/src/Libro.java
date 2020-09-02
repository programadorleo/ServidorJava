import java.sql.ResultSet;

public class Libro {
	
	private String isbn;
	private String titulo;
	private String categoria;
	
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	
	public Libro(String isbn, String titulo, String categoria) {
		super();
		this.isbn = isbn;
		this.titulo = titulo;
		this.categoria = categoria;
	}
	
	public static ResultSet buscarTodasCategorias() {
		
		String consultaSQL ="select distinct(categoria) from Libros";
		DataBaseHelper helper = new DataBaseHelper();
		ResultSet rs = helper.seleccionarRegistro(consultaSQL);		
		return rs;
		
	}
	
	public void insertar() {
		
		String consultaSQL ="insert into Libros(isbn,titulo,categoria)values";
		consultaSQL += "('"+ this.isbn + "','" + this.titulo+"','"+this.categoria+"')";
		DataBaseHelper helper = new DataBaseHelper();
		helper.modificarRegistro(consultaSQL);
		
	}
	
	public static ResultSet buscarTodos() {
		
		String consultaSQL ="select isbn,titulo,categoria from Libros";
		DataBaseHelper helper = new DataBaseHelper();
		ResultSet rs= helper.seleccionarRegistro(consultaSQL);
		return rs;
	}

}
