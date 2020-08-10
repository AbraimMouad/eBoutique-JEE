package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;
import java.text.*;

import Models.ClientModel;
import Models.ArticlesModel;
import DAO.ClientDAO;

//@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   String u="";   
   
    public Login() {
        super();
     
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		request.setAttribute("u", u);
		request.getRequestDispatcher("LoginJSP.jsp").forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientModel Cnn = null;
		ClientDAO c = new ClientDAO();;
			try {
				System.out.println("this is my email +++++++++ >" + request.getParameter("email") + " " + request.getParameter("pwd" ));
				Cnn = c.getC(request.getParameter("email"), request.getParameter("pwd"));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(Cnn == null){
			u="Email or Password incorrect";
			doGet(request, response);
		}else{
			ArrayList<ArticlesModel> l=new ArrayList<ArticlesModel>();
			HttpSession se= request.getSession(true);
		    se.setAttribute("Customer", Cnn);
		    se.setAttribute("Shopping", l);
			request.getRequestDispatcher("/Product").forward(request, response);
		}
	
	}

}
