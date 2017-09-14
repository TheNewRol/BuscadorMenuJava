package inicio;

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
public class serveletBusqueda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public serveletBusqueda() {
        super();
        System.out.println("hola mundo");
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String query = "SELECT * FROM poblaciones";
		List<Array[]> rs = DBConn.executarQuerySelect(query);
		
		ListIterator<Array[]> it = rs.listIterator();
		
		while(it.hasNext()) {
			System.out.println(it.next());
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
