package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.rapphim;
import DAO.RapPhimDAO;
import DB.DBConnection;

@WebServlet("/RapPhimController")
public class RapPhimController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RapPhimController() 
    {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		//khởi tạo kết nối
		Connection conn = DBConnection.CreateConnection();	
		//load banner
		List<rapphim> lHienThiThongTinRapPhim = RapPhimDAO.HienThiThongTinRapPhim(conn);
		request.setAttribute("lHienThiThongTinRapPhim",lHienThiThongTinRapPhim);
		
		//chuyển trang 
		RequestDispatcher rd = request.getRequestDispatcher("View/RapPhim.jsp");
		rd.forward(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		
	}

}
