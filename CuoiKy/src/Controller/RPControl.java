package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.rapphim;
import DAO.RapPhimDAO;

@WebServlet("/RPControl")
public class RPControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private RapPhimDAO rpdao = new RapPhimDAO();   
   
    public RPControl() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch(action) {
			case "/new": showNewForm(request,response); break;
			case "/insert": insertRP(request, response); break;
			case "/delete": deleteRP(request, response); break;
			case "/update": updateRP(request, response); break;
			case "/edit": showEditForm(request,response); break;
			default:listRP(request, response); break;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	private void listRP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		List<rapphim> listRP = rpdao.listAllRapPhim();
		request.setAttribute("listrp", listRP);
		RequestDispatcher dispatcher= request.getRequestDispatcher("qlrapphim.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		RequestDispatcher dispatcher= request.getRequestDispatcher("formrapphim.jsp");
		dispatcher.forward(request, response);
	}

	private void insertRP(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		String tenrap = request.getParameter("tenrap");
		String diachi = request.getParameter("diachi");
		String map = request.getParameter("map");
		String sdt = request.getParameter("sdt");
		String khuvuc = request.getParameter("khuvuc");
		String hinh = request.getParameter("hinh");
		String anh = hinh.substring(hinh.lastIndexOf('\\')+1, hinh.length());
		String hinhanh="Template/Frontend/image/"+anh;
		
		RapPhim newrp = new RapPhim(tenrap, diachi,map,sdt,khuvuc,"dfgsd");
		rpdao.insertRP(newrp);
		response.sendRedirect("list");
	}
	
	private void deleteRP(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		int marp = Integer.parseInt(request.getParameter("marap"));
		
		RapPhim rp = new RapPhim(marp);
		rpdao.deleteRP(rp);
		response.sendRedirect("list");
	}
	
	 private void updateRP(HttpServletRequest request, HttpServletResponse response)
	            throws SQLException, IOException {
	        int marap = Integer.parseInt(request.getParameter("marap"));
	        String tenrap = request.getParameter("tenrap");
			String diachi = request.getParameter("diachi");
			String map = request.getParameter("map");
			String sdt = request.getParameter("sdt");
			String khuvuc = request.getParameter("khuvuc");
	        //String hinhanh = request.getParameter("hinhanh");
	 
	        RapPhim rp = new RapPhim(marap,tenrap,diachi,map,sdt,khuvuc,null);
	        rpdao.updateRP(rp);
	        response.sendRedirect("list");
	    }
	 
	 private void showEditForm(HttpServletRequest request, HttpServletResponse response)
	            throws SQLException, ServletException, IOException {
	        int marap = Integer.parseInt(request.getParameter("marap"));
	        RapPhim existingBook = rpdao.getRP(marap);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("formrapphim.jsp");
	        request.setAttribute("rp", existingBook);
	        dispatcher.forward(request, response);
	 }

}
