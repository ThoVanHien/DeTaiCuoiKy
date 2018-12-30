package DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import BEAN.rapphim;
import DB.DBConnection;
public class RapPhimDAO 
{
	public static List<rapphim> HienThiThongTinRapPhim(Connection conn) 
	{
	
		List<rapphim> list =  new ArrayList<rapphim>();
		String sql = "SELECT * FROM qlwebphim.rapphim";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next())
			{
				rapphim Sliderp = new rapphim();
				
				int marap = rs.getInt("marap");
				String tenrap = rs.getString("tenrap");
				String diachi = rs.getString("diachi");
				String map = rs.getString("map");
				String sdt = rs.getString("sdt");
				int khuvuc = rs.getInt("khuvuc");
				String hinhanh = rs.getString("hinhanh");
				
				
				Sliderp.setMarap(marap);
				Sliderp.setTenrap(tenrap);
				Sliderp.setDiachi(diachi);
				Sliderp.setMap(map);
				Sliderp.setHinhanh(hinhanh);
				Sliderp.setSdt(sdt);
				Sliderp.setKhuvuc(khuvuc);
				
				
				list.add(Sliderp);
			}
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		return list;
	}
	
	public List<rapphim> listAllRapPhim() throws SQLException{
		List<rapphim> listrp = new ArrayList<>();
		
		String sql = "SELECT marap,tenrap,diachi,map,sdt,tencum,hinhanh FROM qlwebphim.rapphim,qlwebphim.cumrap WHERE rapphim.khuvuc=cumrap.id";
		
		DBConnection.CreateConnection();
		
		Statement statement = DBConnection.conn.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()) {
			int marap = resultSet.getInt(1);
			String tenrap = resultSet.getString(2);
			String diachi = resultSet.getString(3);
			String map = resultSet.getString(4);
			String sdt = resultSet.getString(5);
			String khuvuc = resultSet.getString(6);
			String hinhanh = resultSet.getString(7);
			
			
			RapPhim rp = new RapPhim(marap, tenrap,diachi,map,sdt,khuvuc,hinhanh);
			listrp.add(rp);
		}		
		resultSet.close();
		statement.close();
		
		DBConnection.conn.close();
		
		return listrp;		
	}
	
	public boolean insertRP(RapPhim rp) throws SQLException{
		String sql= "INSERT INTO qlwebphim.rapphim (TenRap, DiaChi, Map, SDT, KhuVuc, HinhAnh) VALUES (?, ?, ?, ?, ?, ?)";
		DBConnection.CreateConnection();
		
		PreparedStatement statement = DBConnection.conn.prepareStatement(sql);
		statement.setString(1, rp.getTenrap());
		statement.setString(2, rp.getDiachi());
		statement.setString(3, rp.getMap());
		statement.setString(4, rp.getSdt());
		statement.setString(5, rp.getKhuvuc());
		statement.setString(6, rp.getHinhanh());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		DBConnection.conn.close();
		return rowInserted;
	}
	
	public boolean deleteRP(RapPhim rp) throws SQLException{
		String sql="delete from qlwebphim.rapphim where marap =?";
		
		DBConnection.CreateConnection();
		PreparedStatement statement = DBConnection.conn.prepareStatement(sql);
		statement.setInt(1, rp.getMarap());
		
		boolean rowDeleted = statement.executeUpdate()>0;
		statement.close();
		DBConnection.conn.close();
		return rowDeleted;
	}
	
	public boolean updateRP(RapPhim rp) throws SQLException{
		String sql="UPDATE qlwebphim.rapphim SET TenRap = ?, DiaChi = ?, Map = ?, SDT = ?, KhuVuc = ?, HinhAnh = ? WHERE (MaRap = ?)";
		DBConnection.CreateConnection();
		
		PreparedStatement statement = DBConnection.conn.prepareStatement(sql);
		statement.setString(1, rp.getTenrap());
		statement.setString(2, rp.getDiachi());
		statement.setString(3, rp.getMap());
		statement.setString(4, rp.getSdt());
		statement.setString(5, rp.getKhuvuc());
		statement.setString(6, rp.getHinhanh());

		boolean rowUpdate = statement.executeUpdate()>0;
		statement.close();
		DBConnection.conn.close();
		return rowUpdate;
	}
	
	public RapPhim getRP(int marp) throws SQLException{
		RapPhim rp = new RapPhim();
		rp=null;
		String sql="select * from qlwebphim.rapphim where marap = ?";
		DBConnection.CreateConnection();
		
		PreparedStatement statement = DBConnection.conn.prepareStatement(sql);
		statement.setInt(1, marp);
		
		ResultSet resultSet = statement.executeQuery();
		
		if(resultSet.next()) {
			String tenrap = resultSet.getString("tenrap");
			String diachi = resultSet.getString("diachi");
			String map = resultSet.getString("map");
			String sdt = resultSet.getString("sdt");
			String khuvuc = resultSet.getString("khuvuc");
			String hinhanh = resultSet.getString("hinhanh");
			
			rp = new RapPhim(tenrap,diachi,map,sdt,khuvuc,hinhanh);
		}
		
		resultSet.close();
		statement.close();
		
		return rp;
	}
}
