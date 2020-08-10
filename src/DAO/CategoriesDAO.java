package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Models.ArticlesModel;
import Models.CategoriesModel;




public class CategoriesDAO extends DAO<CategoriesModel>{
	
	public CategoriesDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void add(CategoriesModel element) {
	}

	@Override
	public ArrayList<CategoriesModel> getList() throws Exception {
		Connection c=DAO.micro_projet();
		ArrayList<CategoriesModel> cat = new ArrayList<CategoriesModel>();
		Statement s= c.createStatement();
		String query= "SELECT * FROM Categories";
        ResultSet rs=s.executeQuery(query);	
        while (rs.next())
        {
          int id = rs.getInt("RefCat");
          String name = rs.getString("Cat");
          cat.add(new CategoriesModel(id, name));
        }
       
		return cat;
	}

	@Override
	public CategoriesModel getId(int id) throws Exception {
		return null;
	}
	
	
}
