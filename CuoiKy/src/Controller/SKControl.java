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

import BEAN.SuKien;
import DAO.SuKienDAO;

@WebServlet("/SKControl")
public class SKControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SuKienDAO skdao = new SuKienDAO();
	
    public SKControl() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch(action) {
			case "/new": showNewForm(request,response); break;
			case "/insert": insertSK(request, response); break;
			case "/delete": deleteSK(request, response); break;
			case "/update": updateSK(request, response); break;
			case "/edit": showEditForm(request,response); break;
			default:listSK(request, response); break;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void listSK(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		List<SuKien> listSK = skdao.listAllSuKien();
		request.setAttribute("listsk", listSK);
		RequestDispatcher dispatcher= request.getRequestDispatcher("qlsukien.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		RequestDispatcher dispatcher= request.getRequestDispatcher("formsukien.jsp");
		dispatcher.forward(request, response);
	}

	private void insertSK(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		String tensk = request.getParameter("tensk");
		String noidung = request.getParameter("noidung");
		String hinh = request.getParameter("hinh");
		String anh = hinh.substring(hinh.lastIndexOf('\\')+1, hinh.length());
		anh="Template/Frontend/image/"+anh;
		String tgbatdau = request.getParameter("tgbatdau");
		String tgketthuc = request.getParameter("tgketthuc");
		
		SuKien newsk = new SuKien(tensk, noidung,anh,tgbatdau,tgketthuc);
		skdao.insertSK(newsk);
		response.sendRedirect("list");
	}
	
	private void deleteSK(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		int mask = Integer.parseInt(request.getParameter("mask"));
		
		SuKien sk = new SuKien(mask);
		skdao.deleteSK(sk);
		response.sendRedirect("list");
	}
	
	 private void updateSK(HttpServletRequest request, HttpServletResponse response)
	            throws SQLException, IOException {
	        int mask = Integer.parseInt(request.getParameter("mask"));
	        String tensk = request.getParameter("tensk");
	        String noidung = request.getParameter("noidung");
	        String anh = request.getParameter("anh");
	        String tgbatdau = request.getParameter("tgbatdau");
	        String tgketthuc = request.getParameter("tgketthuc");
	 
	        SuKien sk = new SuKien(mask,tensk,noidung,anh,tgbatdau,tgketthuc);
	        skdao.updateSK(sk);
	        response.sendRedirect("list");
	    }
	 
	 private void showEditForm(HttpServletRequest request, HttpServletResponse response)
	            throws SQLException, ServletException, IOException {
	        int mask = Integer.parseInt(request.getParameter("mask"));
	        SuKien existingBook = skdao.getSK(mask);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("formsukien.jsp");
	        request.setAttribute("sk", existingBook);
	        dispatcher.forward(request, response);
	 }
}
