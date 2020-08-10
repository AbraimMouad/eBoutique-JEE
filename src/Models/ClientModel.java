package Models;

public class ClientModel {
	int id;
	String nom;
	String Prenom;
	String adress;
	String codePostal;
	String email;
	String ville;
	String tel;
	String motPass;
	public ClientModel() {};
	public  ClientModel(int id, String nom, String prenom,String adress, String email,String codePostal,String tel,String ville,  String motPass) {
		super();
		this.id = id;
		this.email = email;
		this.nom = nom;
		this.Prenom = Prenom;
		this.adress = adress;
		this.codePostal = codePostal;
		this.ville = ville;
		this.tel = tel;
		this.motPass = motPass;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return Prenom;
	}
	public void setPreom(String Prenom) {
		this.Prenom = Prenom;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getCodePostal() {
		return codePostal;
	}
	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMotPass() {
		return motPass;
	}
	public void setMotPass(String motPass) {
		this.motPass = motPass;
	}
	
}

