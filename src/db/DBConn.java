package db;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
        	ex.printStackTrace();
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
        	ex.printStackTrace();
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
        	ex.printStackTrace();
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
		
		String poblacion = parametros[0];
		String textobusqueda = parametros[1];
		for (String s : parametros) {
			System.out.println(s);
		}
		
		
		if( textobusqueda.length()==0 && poblacion.length()==0) {
			return listaRestaurantes;
		}
		
		if( textobusqueda.length()>0) {
			System.out.println("1");
			query = "select * from restaurante as r";
			query += " left join menus as m on r.idrestaurante = m.idrestaurante ";
			query += " left join menus_platos as mp on m.idmenu = mp.idmenu ";
			query += " left join platos as p on p.idplato=mp.idplato ";
			query += " where p.nombre like '%"+textobusqueda+"%' ";
			
			if (poblacion.length()>0) {
				System.out.println("2");
				query += " and idpoblacion = (select idpoblaciones from poblaciones where nombre='%"+poblacion+"%')" ;
			}
		} else {
			System.out.println("3");
			query = "select * from restaurante";
			query += " where poblacion like '%"+poblacion+"%'" ;

		}
		
		
		System.out.println(query);
		
	     
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
						(String)	rs.getString(11),
						(String)	rs.getString(12)
				);
            	listaRestaurantes.add(restaurante);
            }
            
        }catch (SQLException ex){
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
						(String)	rs.getString(11),
						(String)	rs.getString(12)
				);
            }
            
        }catch (SQLException ex){
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
	
	public static Restaurante executarQueryLogin(String correo, String password) {
		ResultSet rs = null;
		Statement select = null;
		Restaurante restaurante = null;
		String sql = "SELECT * FROM restaurante WHERE correo = '" + correo + "' AND password = MD5('" + password + "')";
		System.out.println(sql);
		try {
			select = getConnexio().createStatement();
			rs = select.executeQuery(sql);
			
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
					(String)	rs.getString(11),
					(String)	rs.getString(12)
				);
			}
			
		}catch(SQLException ex) {
			ex.printStackTrace();
		}finally{
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
	
	public static String [] executarQueryBusquedaPoblacion () {
		String query = "";
		ResultSet rs = null;
		Statement stm = null;
		String [] poblaciones = null;
		
		query = "SELECT poblacion from restaurante ";
		
		try {
			stm = getConnexio().createStatement();
			rs = stm.executeQuery(query);
			rs.last();
			poblaciones = new String[rs.getRow()];
			rs.first();
			while(rs.next()) {
					poblaciones [rs.getRow() - 1] = rs.getString(1);
			}
		}catch(SQLException ex) {
			ex.printStackTrace();
		}finally {
			if(stm != null) {
				try {
					stm.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return poblaciones;
	}
	
	public static String[][] executarQueryGetMenus(int idRestaurante) {
		String query = "";
		ResultSet rs = null;
		Statement select = null;
		String [][] menus = null;
		
		query = "SELECT idmenu, menu, m.idrestaurante, nombreMenu FROM restaurante As r LEFT JOIN menus AS m ON r.idRestaurante = m.idrestaurante WHERE r.idRestaurante = '" + idRestaurante + "'";
        
		System.out.println(query);
		
        try{
            select =  getConnexio().createStatement();
            rs = select.executeQuery(query);
            rs.last();
            menus = new String [rs.getRow()][4];
            //13
            for(int i = 0; i < menus.length; i++) {
            	while(rs.next()) {
            		for(int j = 0; j < menus[i].length; j++) {
            			menus[i][j] = (String) rs.getObject(j+1);
            		}
            	}
            }
        }catch (SQLException ex){
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
        return menus;
	}
}