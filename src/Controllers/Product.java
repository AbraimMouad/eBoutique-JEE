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




import DAO.ArticleDAO;
import DAO.CategoriesDAO;
import Models.ArticlesModel;
import Models.CategoriesModel;
import Models.ClientModel;



//@WebServlet("/Product")

public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession s;
	ClientModel cos;
	ArrayList<ArticlesModel>l;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Product() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// ArticleDAO dao = new ArticleDAO();
		s = request.getSession(false);
		System.out.println(s.getSessionContext().toString());
		cos = (ClientModel) s.getAttribute("Customer");
		System.out.println("client is " + cos.getNom());
		if(cos == null)
			 cos = new ClientModel();
		l = (ArrayList<ArticlesModel>) s.getAttribute("Shopping");
		if(l == null)
			l = new ArrayList<>();
		int som=0;
		for (ArticlesModel product : l) {
			som += product.getPrix();
		}
		ResourceBundle b;
	   
		if(request.getParameter("Language")!=null){
			String[] planguage= request.getParameter("Language").split("_");
			String lang= planguage[0];
			String con= planguage[1];
			Locale l= new Locale(lang,con);
			request.setAttribute("contry", l.getDisplayCountry());
			b= ResourceBundle.getBundle("resources.content",l);
		}
	
		else{
			Locale l= request.getLocale();
			request.setAttribute("contry", l.getCountry());
			b= ResourceBundle.getBundle("resources.content",l);
		}
		request.setAttribute("Title", b.getString("Title"));
		request.setAttribute("Welcome", b.getString("Welcome"));
		request.setAttribute("Categories", b.getString("Categories"));
		request.setAttribute("itmes", b.getString("itmes"));
		request.setAttribute("Our_Products", b.getString("Our_Products"));
		request.setAttribute("Shopping", b.getString("Shopping"));
		request.setAttribute("Panier", b.getString("Panier"));
		request.setAttribute("Fotter", b.getString("Fotter")); 
		request.setAttribute("Product", b.getString("Product")); 
		request.setAttribute("Deconnexion", b.getString("Deconnexion")); 
		
		
		request.setAttribute("som", som); 
		request.setAttribute("nom", cos.getNom()); 
		request.setAttribute("size", l.size()); 
		
		ArrayList<CategoriesModel> listt ;
		try {
			CategoriesDAO d = new CategoriesDAO();
			listt = d.getList();
			request.setAttribute("listt", listt);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ArrayList<ArticlesModel> pro=new ArrayList<ArticlesModel>() ;
		ArticleDAO dn = new ArticleDAO();
		//choix
		try {
			if(request.getParameter("id_cat")!=null){
				for (ArticlesModel articles : dn.getList()) {
					if(articles.getCategorie().equals(request.getParameter("id_cat"))){
						pro.add(articles);
					}
				}
				
			}else{
				pro = dn.getList();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("Produit", pro);
		request.getRequestDispatcher("ProductJSP.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id")!=null){
			String id=request.getParameter("id");
			ArticleDAO cn= new ArticleDAO();
			ArticlesModel e;
			try {
				e = cn.getNm(id);
				l.add(e);
				cn.modifierStock(id);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			}
			doGet(request, response);
	}

}

