package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Student;

public class StudentDAO {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spring", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	//for Data :Update 
	
	public static int updateData(Student s)
	{
		int status=0;
		try
		{
			Connection con=StudentDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("update student set name=?,contact=?,email=?,city=? where id=?" );
			ps.setString(1, s.getName());
			ps.setInt(2, s.getContact());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getCity());
			ps.setInt(5, s.getId());
			
			status=ps.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	
	
	
	
	
	
	
	
	
	//to fetch data based on id 
	
	public static Student getDatabyID(int id)
	{
		Student s=null;
		try
		{
			Connection con=StudentDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from student where id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				s=new Student();
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setContact(rs.getInt(3));
				s.setEmail(rs.getString(4));
				s.setCity(rs.getString(5));
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
		return s;
	}
	
	
	
	
	
	
	
	
	//for Delete 
	public static int delete(Student s)
	{
		int status=0;
		try
		{
			Connection con=StudentDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from student where id=?");
			ps.setInt(1, s.getId());
			status=ps.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	
	
	
	
	
	
	
	
	// to fetch all data

	public static List<Student> getAllData() {
		List<Student> l = new ArrayList<Student>();
		try {
			Connection con = StudentDAO.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from student");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Student s = new Student();
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setContact(rs.getInt(3));
				s.setEmail(rs.getString(4));
				s.setCity(rs.getString(5));
				l.add(s);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return l;
	}

	// for insertion
	public static int save(Student s) {
		int status = 0;

		try {
			Connection con = StudentDAO.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into student (name,contact,email,city) values (?,?,?,?)");
			ps.setString(1, s.getName());
			ps.setInt(2, s.getContact());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getCity());
			status = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}
