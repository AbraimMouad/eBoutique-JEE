package DAO;

import java.sql.*;
import java.sql.SQLException;
import java.util.ArrayList;

//import com.mysql.jdbc.ResultSet;
//import com.mysql.jdbc.Statement;

import Models.ArticlesModel;

public class ArticleDAO extends DAO<ArticlesModel>{
	 public ArticleDAO() {   
	 }
	@Override
	public void add(ArticlesModel element) {	
	}
	@Override
	public  ArrayList<ArticlesModel> getList() throws Exception{
		Connection c=DAO.micro_projet();
		ArrayList<ArticlesModel> cat = new ArrayList<ArticlesModel>();
		java.sql.Statement s= c.createStatement();
		String query= "SELECT * FROM articles where Stock>0";
        java.sql.ResultSet rs=s.executeQuery(query);	
        while (rs.next())
        {
        	int Id_Product=rs.getInt("CodeArticle");
        	int Stock=rs.getInt("Stock");
        	String Name= rs.getString("Designation");
        	int Price=rs.getInt("Prix");
        	String Picture= rs.getString("Photo");
        	
        	java.sql.Statement s1= c.createStatement();
        	String query1= "SELECT * FROM categories WHERE RefCat=" + rs.getInt("Categorie");
            java.sql.ResultSet rs1=s1.executeQuery(query1);	
            String Name_Categories = null;
            while (rs1.next())
            {
            	Name_Categories = rs1.getString("Cat");
            }
            cat.add(new ArticlesModel(Id_Product, Stock, Name_Categories, Name, Price, Picture));
        	
        }
		return cat;
	}

	
	public ArticlesModel getId(int id) throws Exception{
		Connection c= DAO.micro_projet();
		ArticlesModel cat = null;
		java.sql.Statement s= c.createStatement();
		String query= "SELECT * FROM ArticlesModel where CodeArticle="+id;
        java.sql.ResultSet rs=s.executeQuery(query);	
        while (rs.next())
        {
        	int Id_Product=rs.getInt("CodeArticle");
        	int Stock=rs.getInt("Stock");
        	String Name= rs.getString("Designation");
        	int Price=rs.getInt("Prix");
        	String Picture= rs.getString("Photo");
        	
        	java.sql.Statement s1= c.createStatement();
        	String query1= "SELECT * FROM categories WHERE RefCat="+rs.getInt("Categories");
            java.sql.ResultSet rs1=s1.executeQuery(query1);	
            String Name_Categories = null;
            while (rs1.next())
            {
            	Name_Categories = rs1.getString("Cat");
            }
            cat=new ArticlesModel(Id_Product, Stock, Name_Categories, Name, Price, Picture);
        		
        }
		return cat;
	
	}
	public ArticlesModel getNm(String id) throws Exception{
		Connection c=DAO.micro_projet();
		ArticlesModel cat = null;
		java.sql.Statement s= c.createStatement();
		String query= "SELECT * FROM articles where codeArticle="+Integer.parseInt(id);
	   
        java.sql.ResultSet rs=s.executeQuery(query);
        while (rs.next())
        {
        	int Id_Product=rs.getInt("codeArticle");
        	int Stock=rs.getInt("stock");
        	String Name= rs.getString("designation");
        	int Price=rs.getInt("prix");
        	String Picture= rs.getString("photo");
        	System.out.println("Coool " + Name);
        	java.sql.Statement s1= c.createStatement();
        	String query1= "SELECT * FROM categories WHERE refCat="+rs.getInt("categorie");
            java.sql.ResultSet rs1=s1.executeQuery(query1);	
            String Name_Categories = null;
            while (rs1.next())
            {
            	Name_Categories = rs1.getString("cat");
            }
            cat=new ArticlesModel(Id_Product, Stock, Name_Categories, Name, Price, Picture);
        	
        }
		return cat;
	}
	
	public void modifierStock(String id){
		String query="update articles set stock=stock-1 where  codeArticle="+id;
		Connection c=DAO.micro_projet();
		
		try {
			java.sql.Statement s= c.createStatement();
			s.executeUpdate(query);
			System.out.println("Bien modifier");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
						
	}
}
