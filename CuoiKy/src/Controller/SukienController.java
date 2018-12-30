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

import BEAN.sukien;
import DAO.SuKienDAO;
import DB.DBConnection;

@WebServlet("/SukienController")
public class SukienController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SukienController()
    {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{	
		Connection conn = DBConnection.CreateConnection();
		List<sukien> lHienThiThongTinSK = SuKienDAO.HienThiThongTinSK(conn);
		request.setAttribute("lThongTinSK",lHienThiThongTinSK);
		RequestDispatcher rd = request.getRequestDispatcher("View/SuKien.jsp");
		rd.forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		
	}

}
