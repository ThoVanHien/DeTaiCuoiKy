package DAO;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.sukien;
import BEAN.phim;

public class HomeDAO 
{
	public static List<sukien> HienThiBannerSK(Connection conn) 
	{
	
		List<sukien> list =  new ArrayList<sukien>();
		String sql = "SELECT * FROM qlwebphim.sukien where MaSuKien < 4";
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
	
	public static List<phim> HienThiBannerPhimDangChieu(Connection conn)
	{
		List<phim> list =  new ArrayList<phim>();
		String sql = "SELECT * FROM qlwebphim.phim where TrangThai=\"dc\"";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next())
			{
				phim Slidepdc = new phim();
				int maphim = rs.getInt("maphim");
				String tenphim = rs.getString("tenphim");
				String daodien = rs.getString("daodien");
				String dienvien= rs.getString("dienvien");
				String quocgia = rs.getString("quocgia");
				String theloai = rs.getString("theloai");
				int thoiluong = rs.getInt("thoiluong");
				String khoichieu = rs.getString("khoichieu");
				String ngonngu = rs.getString("ngonngu");
				String phanloai = rs.getString("phanloai");
				String noidung = rs.getString("noidung");
				float giave = rs.getFloat("giave");
				String hinhanh = rs.getString("hinhanh");
				String trailer = rs.getString("trailer");
				String trangthai = rs.getString("trangthai");
				
				Slidepdc.setMaphim(maphim);
				Slidepdc.setTenphim(tenphim);
				Slidepdc.setDaodien(daodien);
				Slidepdc.setDienvien(dienvien);
				Slidepdc.setQuocgia(quocgia);
				Slidepdc.setTheloai(theloai);
				Slidepdc.setThoiluong(thoiluong);
				Slidepdc.setKhoichieu(khoichieu);
				Slidepdc.setNgonngu(ngonngu);
				Slidepdc.setPhanloai(phanloai);
				Slidepdc.setNoidung(noidung);
				Slidepdc.setGiave(giave);
				Slidepdc.setHinhanh(hinhanh);
				Slidepdc.setTrailer(trailer);
				Slidepdc.setTrangthai(trangthai);
				

				list.add(Slidepdc);
			}
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		return list;
	}
	public static List<phim> HienThiBannerPhimSapChieu(Connection conn)
	{
		List<phim> list =  new ArrayList<phim>();
		String sql = "SELECT * FROM qlwebphim.phim where TrangThai=\"sc\"";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next())
			{
				phim Slidepdc = new phim();
				int maphim = rs.getInt("maphim");
				String tenphim = rs.getString("tenphim");
				String daodien = rs.getString("daodien");
				String dienvien= rs.getString("dienvien");
				String quocgia = rs.getString("quocgia");
				String theloai = rs.getString("theloai");
				int thoiluong = rs.getInt("thoiluong");
				String khoichieu = rs.getString("khoichieu");
				String ngonngu = rs.getString("ngonngu");
				String phanloai = rs.getString("phanloai");
				String noidung = rs.getString("noidung");
				float giave = rs.getFloat("giave");
				String hinhanh = rs.getString("hinhanh");
				String trailer = rs.getString("trailer");
				String trangthai = rs.getString("trangthai");
				
				Slidepdc.setMaphim(maphim);
				Slidepdc.setTenphim(tenphim);
				Slidepdc.setDaodien(daodien);
				Slidepdc.setDienvien(dienvien);
				Slidepdc.setQuocgia(quocgia);
				Slidepdc.setTheloai(theloai);
				Slidepdc.setThoiluong(thoiluong);
				Slidepdc.setKhoichieu(khoichieu);
				Slidepdc.setNgonngu(ngonngu);
				Slidepdc.setPhanloai(phanloai);
				Slidepdc.setNoidung(noidung);
				Slidepdc.setGiave(giave);
				Slidepdc.setHinhanh(hinhanh);
				Slidepdc.setTrailer(trailer);
				Slidepdc.setTrangthai(trangthai);
				

				list.add(Slidepdc);
			}
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		return list;
	}
}
