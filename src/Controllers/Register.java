package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ClientDAO;
import Models.ClientModel;

import java.util.*;
import java.text.*;

//@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	String u="";   

 
    public Register() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());

		ResourceBundle b;
		if(request.getParameter("Language")!=null){
			String[] planguage= request.getParameter("Language").split("_");
			String lang= planguage[0];
			String con= planguage[1];
			Locale l= new Locale(lang,con);
			request.setAttribute("contry", l.getDisplayCountry());
			b= ResourceBundle.getBundle("resources.content",l);
		}else{
			Locale l= request.getLocale();
			request.setAttribute("contry", l.getCountry());
			b= ResourceBundle.getBundle("resources.content",l);
		}
		request.setAttribute("Title", b.getString("Title"));
		request.setAttribute("Create", b.getString("Create"));
		request.setAttribute("Sign", b.getString("Sign"));
		request.setAttribute("Email", b.getString("Email"));
		request.setAttribute("Fotter", b.getString("Fotter"));
		request.setAttribute("Password", b.getString("Password"));
		request.setAttribute("Adress", b.getString("Adress"));
		request.setAttribute("Name", b.getString("Name"));
		request.setAttribute("u",u);
		request.getRequestDispatcher("RegisterJSP.jsp").forward(request, response);	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	ClientDAO cn= new ClientDAO();
		ClientModel c= new ClientModel(0,request.getParameter("nom") , request.getParameter("prenom") , 
				request.getParameter("adr") ,request.getParameter("email") ,request.getParameter("cp"),request.getParameter("tel") ,request.getParameter("city") ,
				 request.getParameter("pwd") );
		try {
			cn.add(c);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		u="You have a new account now, Welcome";
		doGet(request,response);
	}
	
}
