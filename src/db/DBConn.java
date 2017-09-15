package db;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import com.mysql.jdbc.Connection;

import restaurante.Restaurante;



public class DBConn {

	private static final String URL = "jdbc:mysql://127.0.0.1:3306/restaurantes";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "";
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
	
	public static List<Restaurante> executarQueryBusquedaRestaurante(String[] parametros){
		String query = "";
		ResultSet rs = null;
		Restaurante restaurante;
		Statement select = null;
		List<Restaurante> listaRestaurantes = new ArrayList<Restaurante>();
		
		query = "SELECT * FROM restaurante";
        
        try{
            select =  getConnexio().createStatement();
            rs = select.executeQuery(query);
            
            while(rs.next()) {
            	restaurante = new Restaurante(
            			(int)		rs.getInt(1),
						(String)	rs.getString(2),
						(String)	rs.getString(3),
						(String)	rs.getString(4),
						(String)	rs.getString(5),
						(String)	rs.getString(6),
						(String)	rs.getString(7),
						(String)	rs.getString(8),
						(String)	rs.getString(9),
						(String)	rs.getString(10),
						(int)		rs.getInt(11),
						(int)		rs.getInt(12)
				);
            	listaRestaurantes.add(restaurante);
            }
            
        }catch (SQLException ex){
             JOptionPane.showMessageDialog(null,ex);
             ex.printStackTrace();
        } finally{
            if(select != null){
            	try {
					select.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            }
        }
        return listaRestaurantes;
    }

	public static Restaurante executarQueryBusquedaRestaurante(int idRestaurante){
		String query = "";
		ResultSet rs = null;
		Statement select = null;
		Restaurante restaurante = null;
		
		query = "SELECT * FROM restaurante";
        
        try{
            select =  getConnexio().createStatement();
            rs = select.executeQuery(query);
            
            while(rs.next()) {
            	restaurante = new Restaurante(
            			(int)		rs.getInt(1),
						(String)	rs.getString(2),
						(String)	rs.getString(3),
						(String)	rs.getString(4),
						(String)	rs.getString(5),
						(String)	rs.getString(6),
						(String)	rs.getString(7),
						(String)	rs.getString(8),
						(String)	rs.getString(9),
						(String)	rs.getString(10),
						(int)		rs.getInt(11),
						(int)		rs.getInt(12)
				);
            }
            
        }catch (SQLException ex){
             JOptionPane.showMessageDialog(null,ex);
             ex.printStackTrace();
        } finally{
            if(select != null){
            	try {
					select.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            }
        }
        return restaurante;
    }
	
	public static void executarQueryBusquedaPoblacion (String poblacion) {
		 
	}
}