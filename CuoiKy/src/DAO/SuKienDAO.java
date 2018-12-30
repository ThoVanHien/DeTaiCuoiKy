package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.SuKien;
import BEAN.sukien;
import DB.DBConnection;

public class SuKienDAO 
{
	public static List<sukien> HienThiThongTinSK(Connection conn) 
	{
	
		List<sukien> list =  new ArrayList<sukien>();
		String sql = "SELECT * FROM qlwebphim.sukien where MaSuKien > 3";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next())
			{
				sukien Slidesk = new sukien();
				String Anh = rs.getString("anh");
				int Masukien = rs.getInt("masukien");
				String Tensk = rs.getString("tensk");
				String Noidung = rs.getString("noidung");
				String Tgbatdau =rs.getString("tgbatdau");
				String Tgketthuc = rs.getString("tgketthuc");
				Slidesk.setMasukien(Masukien);
				Slidesk.setTensk(Tensk);
				Slidesk.setNoidung(Noidung);
				Slidesk.setTgbatdau(Tgbatdau);
				Slidesk.setTgketthuc(Tgketthuc);

				Slidesk.setAnh(Anh);
				list.add(Slidesk);
			}
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		return list;
	}
	
	public List<SuKien> listAllSuKien() throws SQLException{
		List<SuKien> listsk = new ArrayList<>();
		
		String sql = "select masukien,tensk,noidung,anh,DATE_FORMAT(TGBatDau, '%d/%m/%Y') AS tgbatdau,DATE_FORMAT(TGKetThuc, '%d/%m/%Y') AS tgketthuc FROM sukien\r\n" + 
				"";
		
		DBConnection.CreateConnection();
		
		Statement statement = DBConnection.conn.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()) {
			int mask = resultSet.getInt(1);
			String tensk = resultSet.getString(2);
			String noidung = resultSet.getString(3);
			String anh = resultSet.getString(4);
			String tgbatdau = resultSet.getString(5);
			String tgketthuc = resultSet.getString(6);
			
			SuKien sk = new SuKien(mask, tensk,noidung,anh,tgbatdau,tgketthuc);
			listsk.add(sk);
		}		
		resultSet.close();
		statement.close();
		
		DBConnection.conn.close();
		
		return listsk;	
	}
	
	public boolean insertSK(SuKien sk) throws SQLException{
		String sql= "INSERT INTO qlwebphim.sukien (TenSK, NoiDung, Anh, TGBatDau, TGKetThuc) VALUES (?,?,?,?,?)";
		DBConnection.CreateConnection();
		
		PreparedStatement statement = DBConnection.conn.prepareStatement(sql);
		statement.setString(1, sk.getTensk());
		statement.setString(2, sk.getNoidung());
		statement.setString(3,  sk.getAnh());
		statement.setString(4, sk.getTgbatdau());
		statement.setString(5, sk.getTgketthuc());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		DBConnection.conn.close();
		return rowInserted;
	}
	
	public boolean deleteSK(SuKien sk) throws SQLException{
		String sql="delete from qlwebphim.sukien where masukien =?";
		
		DBConnection.CreateConnection();
		PreparedStatement statement = DBConnection.conn.prepareStatement(sql);
		statement.setInt(1, sk.getMask());
		
		boolean rowDeleted = statement.executeUpdate()>0;
		statement.close();
		DBConnection.conn.close();
		return rowDeleted;
	}
	
	public boolean updateSK(SuKien sk) throws SQLException{
		String sql="UPDATE qlwebphim.sukien SET TenSK = ?, NoiDung = ?, Anh = ?, TGBatDau = ?, TGKetThuc = ? WHERE (MaSuKien = ?)";
		DBConnection.CreateConnection();
		
		PreparedStatement statement = DBConnection.conn.prepareStatement(sql);
		statement.setString(1, sk.getTensk());
		statement.setString(2, sk.getNoidung());
		statement.setString(3, sk.getAnh());
		statement.setString(4, sk.getTgbatdau());
		statement.setString(5, sk.getTgketthuc());
		
		boolean rowUpdate = statement.executeUpdate()>0;
		statement.close();
		DBConnection.conn.close();
		return rowUpdate;
	}
	
	public SuKien getSK(int mask) throws SQLException{
		SuKien sk = new SuKien();
		sk=null;
		String sql="select * from qlwebphim.sukien where masukien = ?";
		DBConnection.CreateConnection();
		
		PreparedStatement statement = DBConnection.conn.prepareStatement(sql);
		statement.setInt(1, mask);
		
		ResultSet resultSet = statement.executeQuery();
		
		if(resultSet.next()) {
			String tensk = resultSet.getString("tensk");
			String noidung = resultSet.getString("noidung");
			String anh = resultSet.getString("anh");
			String tgbatdau = resultSet.getString("tgbatdau");
			String tgketthuc = resultSet.getString("tgketthuc");
			
			sk = new SuKien(mask,tensk,noidung,anh,tgbatdau,tgketthuc);
		}
		
		resultSet.close();
		statement.close();
		
		return sk;
	}
	
	
}
