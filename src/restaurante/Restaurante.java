package restaurante;

public class Restaurante {
	private int idRestaurantes;
	private String nombre;
	private String telefono;
	private String direccion;
	private String correo;
	private String password;
	private String categoria;
	private String redSocial;
	private String imagen;
	private String descripcion;
	private int idProvincia;
	private int idPoblacion;
	
	public Restaurante(int idRestaurantes, String nombre, String telefono, String direccion, String correo,
			String password, String categoria, String redSocial, String imagen, String descripcion, int idProvincia,
			int idPoblacion) {
		super();
		this.idRestaurantes = idRestaurantes;
		this.nombre = nombre;
		this.telefono = telefono;
		this.direccion = direccion;
		this.correo = correo;
		this.password = password;
		this.categoria = categoria;
		this.redSocial = redSocial;
		this.imagen = imagen;
		this.descripcion = descripcion;
		this.idProvincia = idProvincia;
		this.idPoblacion = idPoblacion;
	}
	public int getIdRestaurantes() {
		return idRestaurantes;
	}
	public String getNombre() {
		return nombre;
	}
	public String getTelefono() {
		return telefono;
	}
	public String getDireccion() {
		return direccion;
	}
	public String getCorreo() {
		return correo;
	}
	public String getPassword() {
		return password;
	}
	public String getCategoria() {
		return categoria;
	}
	public String getRedSocial() {
		return redSocial;
	}
	public String getImagen() {
		return imagen;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public int getIdProvincia() {
		return idProvincia;
	}
	public int getIdPoblacion() {
		return idPoblacion;
	}
}
