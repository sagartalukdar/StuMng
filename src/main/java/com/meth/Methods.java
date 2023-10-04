package com.meth;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.connec.Connectionclass;
import com.entity.Student;

public class Methods {
    private Connection con;
    
	public Methods(Connection con) {
		super();
		this.con = con;
	}

	public boolean addStudent(Student st) {
		boolean b=false;
		try {
			PreparedStatement ps=con.prepareStatement("insert into sttable (rollnumber,fullname,dateofbirth,address,class) values(?,?,?,?,?)");
			ps.setString(1, st.getRoll_number());
			ps.setString(2, st.getFull_name());
			ps.setString(3, st.getDate_of_birth());
			ps.setString(4, st.getAddress());
			ps.setString(5, st.getStclass());
			int a=ps.executeUpdate();
			if(a==1)b=true;
		} catch (Exception e) {
			System.out.print(e);
		}
		return b;
	}
	public Student getStudent(int id) {
		Student st=new Student();
		try {
		PreparedStatement ps=con.prepareStatement("select * from sttable where id =?");	
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			st.setId(rs.getInt(1));
			st.setRoll_number(rs.getString(2));
			st.setFull_name(rs.getString(3));
			st.setDate_of_birth(rs.getString(4));
			st.setAddress(rs.getString(5));
			st.setStclass(rs.getString(6));
		}
		} catch (Exception e) {
			System.out.print(e);
		}
		return st;
	}
	public boolean updateStudent(Student st) {
		boolean b=false;
		try {
			PreparedStatement ps=con.prepareStatement("update sttable set rollnumber=?,fullname=?,dateofbirth=?,address=?,class=? where id=?");
			ps.setString(1, st.getRoll_number());
			ps.setString(2, st.getFull_name());
			ps.setString(3, st.getDate_of_birth());
			ps.setString(4, st.getAddress());
			ps.setString(5, st.getStclass());
			ps.setInt(6, st.getId());
			int a=ps.executeUpdate();
			if(a==1)b=true;
		} catch (Exception e) {
			System.out.print(e);
		}
		return b;
	}
	
	public List<Student> list(){
		List<Student>sl=new ArrayList<>();
		try {
		PreparedStatement ps=con.prepareStatement("select * from sttable");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Student st=new Student();
			st.setId(rs.getInt(1));
			st.setRoll_number(rs.getString(2));
			st.setFull_name(rs.getString(3));
			st.setDate_of_birth(rs.getString(4));
			st.setAddress(rs.getString(5));
			st.setStclass(rs.getString(6));
			sl.add(st);
		}
		} catch (Exception e) {
			System.out.print(e);
		}
		return sl;
	}
	public boolean delete(int id) {
		boolean b=false;
		try {
			PreparedStatement p=con.prepareStatement("delete from sttable where id=?");
			p.setInt(1, id);
			int a=p.executeUpdate();
			if(a==1)b=true;
		} catch (Exception e) {
			System.out.print(e);
		}
		return b;
	}
}
