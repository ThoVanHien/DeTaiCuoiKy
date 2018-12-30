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

import BEAN.phim;
import BEAN.sukien;
import DAO.HomeDAO;
import DB.DBConnection;

/**
 * Servlet implementation class HomeDNController
 */
@WebServlet("/HomeDNController")
public class HomeDNController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeDNController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		//khởi tạo kết nối
				Connection conn = DBConnection.CreateConnection();
				//load banner
				List<sukien> lHienThiBannerSK = HomeDAO.HienThiBannerSK(conn);
				request.setAttribute("lHienThiBannerSK",lHienThiBannerSK);
				//load thông tin sự kiện
				List<sukien> lHienThiThongTinSK = HomeDAO.HienThiThongTinSK(conn);
				request.setAttribute("lHienThiThongTinSK",lHienThiThongTinSK);
				//load slide phim đang chiếu
				List<phim> lHienThiBannerPDC = HomeDAO.HienThiBannerPhimDangChieu(conn);
				request.setAttribute("lHienThiBannerPDC",lHienThiBannerPDC);
				//load slide phim đang chiếu
				List<phim> lHienThiBannerPSC = HomeDAO.HienThiBannerPhimSapChieu(conn);
				request.setAttribute("lHienThiBannerPSC",lHienThiBannerPSC);
				//chuyển trang 
				RequestDispatcher rd = request.getRequestDispatcher("View/HomeDN.jsp");
				rd.forward(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
