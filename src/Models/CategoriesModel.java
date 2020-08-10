package Models;

public class CategoriesModel {

	int RefCat;
	String Cat;
	
	public CategoriesModel() {
		super();
	}
	public CategoriesModel(int refCat, String cat) {
		super();
		RefCat = refCat;
		Cat = cat;
	}
	public int getRefCat() {
		return RefCat;
	}
	public void setRefCat(int refCat) {
		RefCat = refCat;
	}
	public String getCat() {
		return Cat;
	}
	public void setCat(String cat) {
		Cat = cat;
	}
	
	
}
