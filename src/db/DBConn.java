package db;

import java.sql.Array;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JOptionPane;

import com.mysql.jdbc.Connection;

import restaurante.Restaurante;



public class DBConn {

	private static final String URL = "jdbc:mysql://127.0.0.1:3306/restaurantes";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "";
	private static final Logger LOG = Logger.getLogger(DBConn.class.getName());
	private static Connection conn = null;
	
	private static Connection getConnexio(){//tine que ser privado
        try{
            if (conn == null){
            	Class.forName("com.mysql.jdbc.Driver");
                conn = (Connection)DriverManager.getConnection(URL, USERNAME, PASSWORD);
        
            }
        } catch (SQLException | ClassNotFoundException ex){
             JOptionPane.showMessageDialog(null, ex);
        }
        
        return conn;
    }
	
	
	
	public static boolean executarQueryUpdate(String query) throws SQLException{//original sin ------> throws SQLException
        boolean bret = false;
        Statement stat =null;
        try{
            stat = getConnexio().createStatement();
            stat.executeUpdate(query);
            bret=true;
        } catch (Exception ex){
             JOptionPane.showMessageDialog(null, ex);
        } finally{
            if(stat != null){
                stat.close();
            }
        }
        
        return bret;
    }
	
	public static boolean executarQueryInsert(String query) throws SQLException{
        boolean bret = false;
        Statement stat=null;
        try{
            stat = getConnexio().createStatement();
            stat.executeUpdate(query);
        } catch (SQLException ex){
            JOptionPane.showMessageDialog(null,ex);
        } finally{
            if(stat != null){
                stat.close();
            }
        }
        return bret;
    }
	
	public static void printSQLException(SQLException ex){
        ex.printStackTrace(System.err);
        System.err.println("SQLState: "+ ex.getSQLState());
        System.err.println("Error Code: "+ ex.getErrorCode());
        System.err.println("Message: "+ ex.getMessage());
        Throwable t = ex.getCause();
        while(t!=null){
            System.out.println("Cause: "+ t);
            t=t.getCause();

        }
    }
	
	public static List<Array[]> executarQuerySelect(String query){
		//int size = 0;
		Object [] row;
		ResultSet rs = null;
		Statement select = null;
		List<Array[]> listaRows = new ArrayList<Array[]>();
        
        try{
            select =  getConnexio().createStatement();
            rs = select.executeQuery(query);
            
            rs.last();
            row = new Object [rs.getRow()];
        	//size = rs.getRow();
        	rs.first();
        	
        	
            while(rs.next()) {
            	
            	for (int i = 0; i >row.length; i++) {
            		row[i] = rs.getObject(i);
            	}
            	listaRows.add((Array[]) row);
            }
            
            
        }catch (SQLException ex){
             JOptionPane.showMessageDialog(null,ex);           
        } finally{
            if (select != null){
            	/*try {
					select.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}*/
            }
        }
        return listaRows;
    }
	
	
	
	public static ResultSet executarQuerySelect2(String query){
		ResultSet rs = null;
		Statement select = null;
        
        try{
            select =  getConnexio().createStatement();
            rs = select.executeQuery(query);
            
        }catch (SQLException ex){
             JOptionPane.showMessageDialog(null,ex);           
        } finally{
            if (select != null){
            	/*try {
					select.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}*/
            }
        }
        return rs;
    }
	
	

	public static List<Restaurante> buscaRestaurantes (String ubicacion) { 

		LOG.info("INICIO busca restaurantes");
		Restaurante restaurante = null;

		List<Restaurante> listaRestaurantes = new ArrayList<Restaurante>();

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try (Connection conn = (Connection) DriverManager.getConnection(URL, USERNAME, PASSWORD);
				Statement stmt = conn.createStatement()) {

			//String query="select idRestaurantes,nombre,telefono,provincia,ubicacion,correo,categoria,redsocial,imagen,descripcion from restaurantes ";

			//aqui tienes que poner los resultados de la busqueda como variables
			/*if (ubicacion != null) {
				query = query + " where poblacion=\""+ubicacion+"\"";
			}*/
			LOG.info("INICIO lee alumno");
			
			
			
			String query = "SELECT * FROM poblaciones";

			ResultSet rs = stmt.executeQuery(query);

			while (	rs.next() ) {
				System.out.println(rs.getObject(2));

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