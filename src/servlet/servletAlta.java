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
		String prov = request.getParameter("prov");
		String pobl = request.getParameter("pobl");
		String call = request.getParameter("call");
		String nume = request.getParameter("numb");
		String corr = request.getParameter("corr");
		String cont = request.getParameter("cont");
		String conf = request.getParameter("conf");
		String cate = request.getParameter("cate");
		String imag = request.getParameter("imag");
		String desc = request.getParameter("desc");
		
		System.out.println(name);
		System.out.println(tele);
		System.out.println(prov);
		System.out.println(pobl);
		System.out.println(call);
		System.out.println(nume);
		System.out.println(corr);
		System.out.println(cont);
		System.out.println(conf);
		System.out.println(cate);
		System.out.println(imag);
		System.out.println(desc);
	}

}
