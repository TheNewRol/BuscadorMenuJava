package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servletAlta
 */
@WebServlet("/servletAlta")
public class servletAlta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletAlta() {
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
		
		
		String name = request.getParameter("name");
		String tele = request.getParameter("tele");
		String dire = request.getParameter("dire");
		String corr = request.getParameter("corr");
		String pass = request.getParameter("pass");
		String cate = request.getParameter("cate");
		String reds = request.getParameter("reds");
		String imag = request.getParameter("imag");
		String desc = request.getParameter("desc");
		String prov = request.getParameter("prov");
		String pobl = request.getParameter("pobl");
		String twit = request.getParameter("twit");
		String face = request.getParameter("face");
		String snap = request.getParameter("snap");
		String yout = request.getParameter("yout");
		String goog = request.getParameter("goog");
		String [] social = request.getParameterValues("social");
		String [] socialURL = request.getParameterValues("socialURL");
		String redSocial = "";
		for(int i = 0; i < social.length; i++){
			redSocial += social[i] + "|" + socialURL[i]+",";
		}
		
		System.out.println(redSocial);
		//name="socialURL"
		
		
		String sql = "INSERT INTO restaurante (nombre, telefono, direccion, correo, password, categoria, redsocial, imagen, descripcion, provincia, poblacion) VALUES("+name+", "+tele+", "+dire+", "+corr+", "+pass+", "+cate+", "+reds+", "+imag+", "+desc+", "+prov+", "+pobl+")";
		//System.out.println(sql);

	}

}
