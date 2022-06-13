package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Calcul;
import beans.Operation;

/**
 * Servlet implementation class ContServlet
 */
@WebServlet("/ContServlet")
public class ContServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String message="";
		double nu=0;
		double nd=0;
		String op=request.getParameter("opr");
		
		try {
		 nu=Double.parseDouble(request.getParameter("x"));
		 nd=Double.parseDouble(request.getParameter("y"));
		}catch (NumberFormatException e) {
			System.out.println("value pas correct");
		}
		
		request.setAttribute("message", message);
		Operation opp=new Operation();
		Calcul cal=new Calcul();
		opp.oper(cal.getX(), cal.getY(),op );
		cal.setY(nd);cal.setX(nu);
		cal.setResultat(opp.oper(cal.getX(), cal.getY(),op ));
		
		request.setAttribute("resl", cal);
		request.getServletContext().getRequestDispatcher("/calc.jsp").forward(request, response);
		//request.getServletContext().getRequestDispatcher("/test.jsp").forward(request, response);
		//quest.getServletContext().getRequestDispatcher("/test2.jsp").forward(request, response);
		
		
		
		
		
	}

}
