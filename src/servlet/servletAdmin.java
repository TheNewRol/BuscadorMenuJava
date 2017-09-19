package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servletAdmin
 */
@WebServlet("/servletAdmin")
public class servletAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String nombre = request.getParameter("nombre");
		String categoria = request.getParameter("categoria");
		String menu = request.getParameter("menu");
		String descripcion = request.getParameter("descripcion");
		String provincia = request.getParameter("provincia");
		String poblacion = request.getParameter("poblacion");
		String direccion = request.getParameter("direccion");
		
		String[] social = request.getParameterValues("social");
		String[] socialUrl = request.getParameterValues("socialURL");
		
		for (int i = 0; i < social.length; i++) {
			System.out.println("resultado");
		    System.out.println(social[i]);
		    System.out.println(socialUrl[i]);
		}
		
		
		
		
		
		System.out.println(nombre + ", " + categoria + ", " + menu + ", " + descripcion  + ", " + direccion + ", " + provincia + ", " + poblacion);
		
	}

}
