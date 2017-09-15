package servlet;

import java.io.IOException;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConn;
import restaurante.Restaurante;

/**
 * Servlet implementation class servletBusqueda
 */
@WebServlet("/servletBusqueda")
public class servletBusqueda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletBusqueda() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		List<Restaurante> listaRestaurantes;
		String [] parametros = {"",""};
		
		listaRestaurantes = DBConn.executarQueryBusquedaRestaurante(parametros);
		
		ListIterator<Restaurante> it = listaRestaurantes.listIterator();
		
		while(it.hasNext()) {
			Restaurante restaurante = it.next();
	        System.out.println(restaurante.getNombre());
	    
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
