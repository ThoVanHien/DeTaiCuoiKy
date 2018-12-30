package DAO;
import java.sql.*;

import BEAN.sukien;
public class ExInsert 
{
	public static boolean InsertSukien(Connection conn, sukien sk)
	{
		PreparedStatement ptmt = null;
		String sql = "insert into sukien(MaSuKien,TenSK,NoiDung,Anh,TGBatDau,TGKetThuc) value (?,?,?,?,?,?)";
		
		try 
		{
			ptmt = conn.prepareStatement(sql);
			int masukien = sk.getMasukien();
			String tensk = sk.getTensk();
			String noidung = sk.getNoidung();
			String anh = sk.getAnh();
			String tgbatdau = sk.getTgbatdau();
			String tgketthuc = sk.getTgketthuc();
			
			ptmt.setInt(1,masukien);
			ptmt.setString(2,tensk);
			ptmt.setString(3,noidung);
			ptmt.setString(4,anh);
			ptmt.setString(5,tgbatdau);
			ptmt.setString(6,tgketthuc);
			int kt = ptmt.executeUpdate();
			
			if(kt!=0)
			{
				
				return true;
				
			}
			ptmt.close();
		} 
		catch (SQLException e) 
		{

			e.printStackTrace();
		}
		return false;
	}
	public static boolean UpdateSuKien(Connection conn, sukien sk)
	{
		PreparedStatement ptmt = null;
		String sql = "UPDATE sukien SET TenSK = ? , NoiDung = ? , Anh = ?, TGBatDau = ?, TGKetThuc = ?" + 
				"WHERE TenSK = ?;";
		
		try 
		{
			ptmt = conn.prepareStatement(sql);
			int masukien = sk.getMasukien();
			String tensk = sk.getTensk();
			String noidung = sk.getNoidung();
			String anh = sk.getAnh();
			String tgbatdau = sk.getTgbatdau();
			String tgketthuc = sk.getTgketthuc();
			
			ptmt.setInt(1,masukien);
			ptmt.setString(2,tensk);
			ptmt.setString(3,noidung);
			ptmt.setString(4,anh);
			ptmt.setString(5,tgbatdau);
			ptmt.setString(6,tgketthuc);
			int kt = ptmt.executeUpdate();
			
			if(kt!=0)
			{
				
				return true;
				
			}
			ptmt.close();
		} 
		catch (SQLException e) 
		{

			e.printStackTrace();
		}
		return false;
		
		
	}
}	
