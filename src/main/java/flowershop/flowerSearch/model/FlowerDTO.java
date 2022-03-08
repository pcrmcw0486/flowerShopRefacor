package flowershop.flowerSearch.model;

public class FlowerDTO {
	private String Fname;
	private String image_Path;
	private int color;
	private String description;

	public String getImage_Path() {
		return image_Path;
	}

	public void setImage_Path(String image_Path) {
		this.image_Path = image_Path;
	}

	public int getColor() {
		return color;
	}

	public void setColor(int color) {
		this.color = color;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public FlowerDTO() {
		super();
	}

	public String getFname() {
		return Fname;
	}

	public void setFname(String fname) {
		Fname = fname;
	}
	
}
