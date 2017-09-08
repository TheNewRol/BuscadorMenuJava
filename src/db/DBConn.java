package db;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;

import restaurante.Restaurante;



public class DBConn {

	private static final String URL = "jdbc:mysql://127.0.0.1:3306/restaurantes";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "root";
	private static final Logger LOG = Logger.getLogger(DBConn.class.getName());

	public static List<Restaurante> buscaRestaurantes (String ubicacion) { 

		LOG.info("INICIO busca restaurantes");
		Restaurante restaurante = null;

		List<Restaurante> listaRestaurantes = new ArrayList<Restaurante>();


		try (Connection conn = (Connection) DriverManager.getConnection(URL, USERNAME, PASSWORD);
				Statement stmt = conn.createStatement()) {

			String query="select idRestaurantes,nombre,telefono,provincia,ubicacion,correo,categoria,redsocial,imagen,descripcion from restaurantes ";

			//aqui tienes que poner los resultados de la busqueda como variables
			if (ubicacion != null) {
				query = query + " where poblacion=\""+ubicacion+"\"";
			}

			ResultSet rs = stmt.executeQuery(query);

			while (	rs.next() ) {


				/*restaurante = new Restaurante(
						(int) rs.getObject(1),
						(String) rs.getObject(2),
						(int) rs.getObject(3),
						(int) rs.getObject(4),
						(int) rs.getObject(5),
						(String) rs.getObject(6),
						(String) rs.getObject(7),
						(String) rs.getObject(5),
						(String) rs.getObject(8),
						(String) rs.getObject(9),
						(String) rs.getObject(10)
							);	*/

				listaRestaurantes.add(restaurante);

			}



		} catch (Exception e) {
			LOG.log(Level.SEVERE, "Error cargando restaurante", e);
			return null;
		}

		LOG.info("final carga restaurante");

		return listaRestaurantes;
	}

}

/*

/*
 * Llegeix un alumne per id, retorna objecte
 






/*
 * Llegeix un alumne per id, retorna objecte
 
public static Restaurante leeRestaurante (int idRestaurantes) { 

	LOG.info("INICIO lee restaurante");
	Restaurante restaurante = null;

	try (Connection conn = (Connection) DriverManager.getConnection(URL, USERNAME, PASSWORD);
			Statement stmt = conn.createStatement()) {

		String query="select idRestaurantes,nombre,telefono,provincia,ubicacion,correo,categoria,redsocial,imagen,descripcion from restaurantes ";

		//aqui tienes que poner los resultados de la busqueda como variables


		if (buscarubicacion!=null) {
			query = query + "where poblacion=\""+ciudad+"\"";
			ResultSet rs = stmt.executeQuery(query);
			rs.next();




			restaurante = new Restaurante(
					(Integer) rs.getObject(1),
					(String) rs.getObject(2),
					(String) rs.getObject(3),
					(String) rs.getObject(4),
					(String) rs.getObject(5)
					);

		} catch (Exception e) {
			LOG.log(Level.SEVERE, "Error cargando restaurante", e);
		}



		LOG.info("INICIO carga restaurante");

		return restaurante;


	}
*/