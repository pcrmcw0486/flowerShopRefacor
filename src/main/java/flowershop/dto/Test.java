package flowershop.dto;
import java.io.Serializable;

public class Test implements Serializable {
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String testID;
	private String testName;
	private String description;
	private String photo;
	
	public Test() {
		super();
	}
	
	public Test(String testID, String testName, String description) {
		this.testID = testID;
		this.testName = testName;
		this.description = description;
	}
	
	public String getTestID() {
		return testID;
	}
	
	public void setTestID(String testID) {
		this.testID = testID;
	}
	
	public String getTestName() {
		return testName;
	}
	
	public void setTestName(String testName) {
		this.testName = testName;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getPhoto() {
		return photo;
	}
	
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
}
