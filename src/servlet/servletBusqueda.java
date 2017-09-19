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

		String ubicacion=request.getParameter("searchpoblacion");
		
		String textsearch=request.getParameter("textsearch");
		String query=null;
		
		System.out.println("lloc:"+ubicacion);
		
		String[] params = {ubicacion,textsearch};
		
		List<Restaurante> resultados = DBConn.executarQueryBusquedaRestaurante(params);
		
		StringBuilder sb = new StringBuilder();
		
		sb.append("<ul>");
		for (Restaurante r : resultados) {
			sb.append("<li>").append(r.getNombre()).append("</li>");
		}
		sb.append("</ul>");
		
		response.getWriter().append(sb.toString());
		
		
	}
		
		/*List<Array[]> rs = DBConn.executarQuerySelect(query);
=======
		response.getWriter().append("Served at: ").append(request.getContextPath());
		List<Restaurante> listaRestaurantes;
		String [] parametros = {"",""};
>>>>>>> master
		
		listaRestaurantes = DBConn.executarQueryBusquedaRestaurante(parametros);
		
		ListIterator<Restaurante> it = listaRestaurantes.listIterator();
		
		while(it.hasNext()) {
			Restaurante restaurante = it.next();
	        System.out.println(restaurante.getNombre());
	    
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
