package Models;

public class LigneCommandeModel {
	int numCommande;
	String codeArticle;
	int QteCde;
	public LigneCommandeModel(int numCommnde, String codeArticle, int qteCde) {
		super();
		this.numCommande = numCommnde;
		this.codeArticle = codeArticle;
		QteCde = qteCde;
	}
	public int getNumCommnde() {
		return numCommande;
	}
	public void setNumCommnde(int numCommnde) {
		this.numCommande = numCommnde;
	}
	public String getCodeArticle() {
		return codeArticle;
	}
	public void setCodeArticle(String codeArticle) {
		this.codeArticle = codeArticle;
	}
	public int getQteCde() {
		return QteCde;
	}
	public void setQteCde(int qteCde) {
		QteCde = qteCde;
	}
	

}
