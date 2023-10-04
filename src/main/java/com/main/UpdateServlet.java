package com.main;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import com.connec.Connectionclass;
import com.entity.Student;
import com.meth.Methods;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/edit")
public class UpdateServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  String rollnumber=req.getParameter("rollnumber");
	  String fullname=req.getParameter("fullname");
	  String dateofbirth=req.getParameter("dateofbirth");
	  String address=req.getParameter("address");
	  String stclass=req.getParameter("class");
	  int id=Integer.parseInt(req.getParameter("id"));
	  
	  Student st=new Student(rollnumber,fullname,dateofbirth,address,stclass);
	  st.setId(id);
	  Methods m=new Methods(Connectionclass.getConnection());
	  jakarta.servlet.http.HttpSession hs=req.getSession();
	  boolean b=m.updateStudent(st);
	  if(b) {
		  hs.setAttribute("succmsg", "successfully updated");
		  resp.sendRedirect("index.jsp");
	  }
	  else {
		  hs.setAttribute("errmsg", "not updated");
		  resp.sendRedirect("edit_student.jsp");
	  }
	}

	
}
