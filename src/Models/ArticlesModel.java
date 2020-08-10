package Models;

public class ArticlesModel {
	private int codeArticle;
	private int stock;
	private String Categorie;
	private String designation;
	private int prix;
	private String photo;
	
	public ArticlesModel(int codeArticle, int stock, String categorie, String desination, int prix, String photo) {
		codeArticle = codeArticle;
		this.stock = stock;
		Categorie = categorie;
		designation = desination;
		this.prix = prix;
		this.photo = photo;
	}
	public int getCodeArticle() {
		return codeArticle;
	}
	public void setCodeArticle(int codeArticle) {
		codeArticle = codeArticle;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getCategorie() {
		return Categorie;
	}
	public void setCategories(String categorie) {
		Categorie = categorie;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesination(String desination) {
		designation = desination;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) {
		this.prix = prix;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
}

