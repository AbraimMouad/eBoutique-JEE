package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



import Models.CommandeModel;
import Models.LigneCommandeModel;

public  class CommandeDAO extends DAO<LigneCommandeModel>{
	 public CommandeDAO() {   
	 }
	public void add(LigneCommandeModel element,int nom) {
		Connection c=DAO.micro_projet();
		Statement s,s1;
		try {
			s = c.createStatement();
			s1 = c.createStatement();
			String query= "INSERT INTO commandes VALUES(null,'"+nom+"',CURDATE())";
			String query1= "INSERT INTO lignescommandes VALUES(null,'"+element.getCodeArticle()+"','"+element.getQteCde()+"')";
	        s.executeUpdate(query);	
	        s1.executeUpdate(query1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public ArrayList<LigneCommandeModel> getList() throws Exception {
		Connection c=DAO.micro_projet();
		ArrayList<LigneCommandeModel> cat = new ArrayList<LigneCommandeModel>();
		Statement s= c.createStatement();
		String query= "SELECT * FROM lignescommandes";
        ResultSet rs=s.executeQuery(query);	
        while (rs.next())
        {
          int NumCommnde = rs.getInt("NumCommnde");
          String CodeArticle = rs.getString("CodeArticle");
          int QteCde = rs.getInt("QteCde");
          cat.add(new LigneCommandeModel(NumCommnde,CodeArticle,QteCde));
        }
		return cat;
	}

	public ArrayList<LigneCommandeModel> getList( int id) throws Exception {
		Connection c=DAO.micro_projet();
		ArrayList<LigneCommandeModel> cat = new ArrayList<LigneCommandeModel>();
		Statement s= c.createStatement();
		String query= "SELECT * FROM lignescommandes,commandes WHERE `lignecommande`.`NumCommnde`=`commandes`.`NumCommande` and CodeClient="+id;
        ResultSet rs=s.executeQuery(query);	
        while (rs.next())
        {
          int NumCommnde = rs.getInt("NumCommnde");
          String CodeArticle = rs.getString("CodeArticle");
          int QteCde = rs.getInt("QteCde");
          cat.add(new LigneCommandeModel(NumCommnde,CodeArticle,QteCde));
        }
		return cat;
	}
	@Override
	public LigneCommandeModel getId(int id) throws Exception {
		Connection c=DAO.micro_projet();
		LigneCommandeModel cat =null;
		Statement s= c.createStatement();
		String query= "SELECT * FROM lignescommandes WHERE CodeClient="+id;
        ResultSet rs=s.executeQuery(query);	
        while (rs.next())
        {
          int NumCommnde = rs.getInt("NumCommnde");
          String CodeArticle = rs.getString("CodeArticle");
          int QteCde = rs.getInt("QteCde");
          cat=new LigneCommandeModel(NumCommnde,CodeArticle,QteCde);
        }
		return cat;
	}
	@Override
	public void add(LigneCommandeModel element) {
		// TODO Auto-generated method stub
		
	}
	

	
	 
}
