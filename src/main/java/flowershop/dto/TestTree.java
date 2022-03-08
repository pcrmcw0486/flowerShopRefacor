package flowershop.dto;
import java.io.Serializable;

public class TestTree implements Serializable {
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String treeNum;
	private String treeID;
	private String treePerson;
	private String treeDescription;
	private String recName;
	private String recPhoto;
	
	public TestTree() {
		super();
	}
	
	public TestTree(String treeNum, String treeID) {
		this.treeNum = treeNum;
		this.treeID = treeID;
	}
	
	public String getTreeNum() {
		return treeNum;
	}
	
	public void setTreeNum(String treeNum) {
		this.treeNum = treeNum;
	}
	
	public String getTreeID() {
		return treeID;
	}
	
	public void setTreeID(String treeID) {
		this.treeID = treeID;
	}
	
	public String getTreePerson() {
		return treePerson;
	}
	
	public void setTreePerson(String treePerson) {
		this.treePerson = treePerson;
	}
	
	public String getTreeDescription() {
		return treeDescription;
	}
	
	public void setTreeDescription(String treeDescription) {
		this.treeDescription = treeDescription;
	}
	
	public String getRecName() {
		return recName;
	}
	
	public void setRecName(String recName) {
		this.recName = recName;
	}
	
	public String getRecPhoto() {
		return recPhoto;
	}
	
	public void setRecPhoto(String recPhoto) {
		this.recPhoto = recPhoto;
	}

}
