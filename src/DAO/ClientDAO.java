package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Models.ClientModel;

public class ClientDAO extends DAO<ClientModel>{

	public void add(ClientModel element) {
		Connection c=DAO.micro_projet();
		Statement s;
		try {
			s = c.createStatement();
			String query= "INSERT INTO clients VALUES(null,'"+element.getNom()+"','"+element.getPrenom()+"','"+element.getAdress()+"','"+element.getEmail()+"','"+element.getCodePostal()+"','"+element.getTel()+"','"+element.getVille()+"','"+element.getMotPass()+"')";
	        System.out.println(query);
			s.executeUpdate(query);	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public ArrayList<ClientModel> getList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ClientModel getId(int id) throws Exception {
		ClientModel cat = null;
		Connection c=DAO.micro_projet();
		Statement s= c.createStatement();
		String query= "SELECT * FROM clients WHERE Id="+id;
        ResultSet rs=s.executeQuery(query);	
        while (rs.next())
        {
          int Id_Custome = rs.getInt("Id");
          String Email = rs.getString("Email");
          String Name = rs.getString("Nom");
          String PreName = rs.getString("PreNom");

          String Adress = rs.getString("Adress");
          String CodePostal = rs.getString("cp");
          String Ville = rs.getString("Ville");
          String Tel = rs.getString("tel");
          String Password = rs.getString("MotPasse");
          

          
          cat = new ClientModel(Id_Custome,PreName,Name,Adress,CodePostal,Ville, Tel,Email, Password);
        }
       
		return cat;
	}
	
	public ClientModel getC(String email,String pass) throws Exception {
		ClientModel cat = null;
		Connection c = DAO.micro_projet();
		Statement s= c.createStatement();
		String query= "SELECT * FROM clients WHERE Email='"+email+"' AND MotPasse='"+pass+"'";
        ResultSet rs=s.executeQuery(query);	
        while (rs.next())
        {
        	 int Id_Custome = rs.getInt("Id");
             String Email = rs.getString("Email");
             String Name = rs.getString("Nom");
             String PreName = rs.getString("PreNom");

             String Adress = rs.getString("Adresse");
             String CodePostal = rs.getString("CodPostal");
             String Ville = rs.getString("Ville");
             String Tel = rs.getString("tel");
             String Password = rs.getString("MotPasse");
          
             cat = new ClientModel(Id_Custome,Name,PreName,Adress,Email,CodePostal,Tel,Ville,Password);

          
          
        }
       
		return cat;
	}
	
	

}

