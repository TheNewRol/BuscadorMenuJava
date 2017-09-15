package servlet;

import java.io.IOException;
import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConn;

/**
 * Servlet implementation class serveletBusqueda
 */
@WebServlet("/serveletBusqueda")
public class servletBusqueda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletBusqueda() {
        super();
        System.out.println("hola mundo");
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ubicacion=request.getParameter("searchpoblacion");
		String provincia=request.getParameter("searchprovincia");
		String textsearch=request.getParameter("textsearch");
		String query=null;
		
		if(ubicacion!=null && provincia!=null) {
			response.getWriter().append("Served at: ").append(request.getContextPath());
			query = "SELECT * FROM restaurantes where poblacion='"+ubicacion+"' and provincia='"+provincia+"' ";
		} else if (provincia!=null) {
			query = "SELECT * FROM restaurantes where provincia='"+provincia+"' ";
		} else if(ubicacion!=null) {
			 query = "SELECT * FROM restaurantes where poblacion='"+ubicacion+"' ";
		} else {
			 query = "SELECT * FROM restaurantes ";
		}
		 
		
		/*List<Array[]> rs = DBConn.executarQuerySelect(query);
		
		ListIterator<Array[]> it = rs.listIterator();
		
		while(it.hasNext()) {
			System.out.println(it.next());
		}*/
		
		ResultSet rs = DBConn.executarQuerySelect2(query);
		try {
			while(rs.next()) {
				System.out.println(rs.getObject(2));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		}
		
		
		StringBuilder sb = new StringBuilder();
        sb.append("<html>");
        sb.append("</html>");
        response.getWriter().append(sb.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
