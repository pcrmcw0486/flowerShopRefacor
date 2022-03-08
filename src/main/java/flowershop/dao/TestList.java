package flowershop.dao;


import flowershop.dto.Test;

import java.util.ArrayList;

public class TestList {
	private ArrayList<Test> listOfTests = new ArrayList<Test>();
	
	public TestList() {
		Test treeTest = new Test("Tree", "���� �ɸ��׽�Ʈ", "Go");
		treeTest.setPhoto("tree.jpg");
		
		Test colorTest = new Test("Color", "���� �ɸ��׽�Ʈ", "Go");
		colorTest.setPhoto("color.jpg");
		
		listOfTests.add(treeTest);
		listOfTests.add(colorTest);
	}
	
	public ArrayList<Test> getAllTests() {
		return listOfTests;
	}
}
