package flowershop.dto;
import java.io.Serializable;

public class Game implements Serializable {
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String ground;
	private String color;
	private String season;
	private String result;
	private String image;
	
	public Game() {
		super();
	}
	
	public Game(String ground, String color, String season) {
		this.ground = ground;
		this.color = color;
		this.season = season;
	}

	public String getGround () {
		return ground;
	}
	
	public void setGround (String ground) {
		this.ground = ground;
	}
	
	public String getColor () {
		return color;
	}
	
	public void setColor (String color) {
		this.color = color;
	}
	
	public String getSeason () {
		return season;
	}
	
	public void setSeason (String season) {
		this.season = season;
	}
	
	public String getResult() {
		return result;
	}
	
	public void setResult(String result) {
		this.result = result;
	}
	
	public String getImage() {
		return image;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
}
