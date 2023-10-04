package com.main;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import com.connec.Connectionclass;
import com.meth.Methods;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		Methods m=new Methods(Connectionclass.getConnection());
		jakarta.servlet.http.HttpSession hs=req.getSession();
		boolean b=m.delete(id);
		if(b) {
			hs.setAttribute("succmsg", "deleted");
			resp.sendRedirect("index.jsp");
		}
		else {
			hs.setAttribute("errmsg", "not deleted");
			resp.sendRedirect("index.jsp");
		}
	}
 
}
