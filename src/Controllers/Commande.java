package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import DAO.ArticleDAO;
import DAO.CommandeDAO;
import Models.ArticlesModel;
import Models.ClientModel;
import Models.LigneCommandeModel;

import java.util.*;
import java.text.*;


//@WebServlet("/Commande")
public class Commande extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession s;
	ClientModel cos;
	ArrayList<ArticlesModel>l;
  
    public Commande() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ResourceBundle b;
		s= request.getSession(false);
		cos=(ClientModel) s.getAttribute("Customer");
		l=(ArrayList<ArticlesModel>) s.getAttribute("Shopping");
		if(request.getParameter("save")!=null){
			l=(ArrayList<ArticlesModel>) s.getAttribute("Shopping");
			CommandeDAO d = new CommandeDAO();
			for (ArticlesModel articles : l) {
				LigneCommandeModel c= new LigneCommandeModel(articles.getCodeArticle(), articles.getDesignation(),7);
				d.add(c,cos.getId());
			}
			 
			l.removeAll(l);
		}
		if(l==null)
			l = new ArrayList<>();
		for (ArticlesModel product : l) {
			System.out.println(product.getPrix());
		}
		
		try {
			CommandeDAO d = new CommandeDAO();
			ArticleDAO d1 = new ArticleDAO();
			ArrayList<LigneCommandeModel> cn= d.getList(cos.getId());
			ArrayList<ArticlesModel> p=new ArrayList<ArticlesModel>();
			for (LigneCommandeModel articles : cn) {
				p.add(d1.getNm(articles.getCodeArticle()));
			}
			
			request.setAttribute("Commande", p);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(request.getParameter("Language")!=null){
			String[] planguage= request.getParameter("Language").split("_");
			String lang= planguage[0];
			String con= planguage[1];
			Locale lo= new Locale(lang,con);
			request.setAttribute("contry", lo.getDisplayCountry());
			b= ResourceBundle.getBundle("resources.content",lo);
		}else{
			Locale lo= request.getLocale();
			request.setAttribute("contry", lo.getCountry());
			b= ResourceBundle.getBundle("resources.content",lo);
		}
		request.setAttribute("Title", b.getString("Title"));
		request.setAttribute("Welcome", b.getString("Welcome"));
		request.setAttribute("Panier", b.getString("Panier"));
		request.setAttribute("itmes", b.getString("itmes"));
		request.setAttribute("Save", b.getString("Save"));
		request.setAttribute("Panier", b.getString("Panier"));
		request.setAttribute("Fotter", b.getString("Fotter")); 
		request.setAttribute("Product", b.getString("Product")); 
		request.setAttribute("Deconnexion", b.getString("Deconnexion"));
		request.setAttribute("Have", b.getString("Have")); 
		request.setAttribute("Order", b.getString("Order"));
		request.setAttribute("CommandeY", b.getString("CommandeY"));
		request.setAttribute("Produit", l);
		if(cos==null)
			 cos = new ClientModel();
		request.setAttribute("nom", cos.getNom()); 
		request.getRequestDispatcher("CommandeJSP.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		s= request.getSession(false);
		cos=(ClientModel) s.getAttribute("Customer");

		doGet(request, response);
	}

}
