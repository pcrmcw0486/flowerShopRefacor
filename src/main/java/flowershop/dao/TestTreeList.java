package flowershop.dao;


import flowershop.dto.TestTree;

import java.util.ArrayList;

public class TestTreeList {
	private ArrayList<TestTree> treeList = new ArrayList<TestTree>();
	
	public TestTreeList() {
		TestTree tree1 = new TestTree("1", "tree1");
		tree1.setTreePerson("�����ϰ� �������� ���");
		tree1.setTreeDescription("����� ���Ӿ��� ���� �ʰ� �ڱⰳ���� �Ϸ��� ����ϴ� ����̿���.<br>"
				+ "�ſ� �߸����̰� ���� ������ ������ �־ ������� ��Ű� �ǻ������ �ϴ� ���� ���� ������� �� �־��.<br>"
				+ "���� ������ �ϴ� ���� ������ ��ȭ�� ���ϱ� �����̴� �̱����� �� �ƴ���.<br>"
				+ "�ٸ� ������� ��ſ��� �ظ� ������ �������� ���� �������� ������ �Ҽ��� ������� ����� ��ġ�� �˰� �������ϱ⵵ �Ѵ�ϴ�.");
		tree1.setRecName("���޷�");
		tree1.setRecPhoto("../resources/images/azalea.jpg");
		
		TestTree tree2 = new TestTree("2", "tree2");
		tree2.setTreePerson("����ְ� ������ ���");
		tree2.setTreeDescription("���ӽ�����鼭�� å�Ӱ��� ���ϸ� �ٸ� ������� ������ ���� �����ϴ� ����Դϴ�.<br>"
				+ "�̷� ���������� ȸ�翡���� ���� ���� ���� å���� �ô� ��찡 ��κ��̰� �������� ģ�а��� ���� ���̾ ���� ������� ���� �ŷڸ� �Ѵٰ� �ؿ�.<br>"
				+ "��� ��ġ�� ������ ���߷±��� ���� ����� ���� ���� Ȥ�� ģ������� ������ �ڸ��� ��̰� ������ִ� ������ �մϴ�.");
		tree2.setRecName("��ȭ");
		tree2.setRecPhoto("../resources/images/chrysanthemum.jpg");
		
		TestTree tree3 = new TestTree("3", "tree3");
		tree3.setTreePerson("�ȶ��ϰ� ������ ���� ���");
		tree3.setTreeDescription("���� ���� ������ ������ �־� ����� ���̵��� �������� ����� ���� �� ��ü��� �� �� �־��.<br>"
				+ "ȥ�� ������ �����ϴ� ���� ���� �������̶�� �� �� �־��.<br>"
				+ "���� �Ȱ��� ���� �����ϰ� ���� ���� ���� ������� �����ؿ�.<br>"
				+ "�������� ��� �ϴ� �� �ð��� ���� ������ ����� ��κ� ������� �ݴ��ϴ��� �װ��� ���� ���̶� �����Ѵٸ� �ٷ� �ൿ���� �ű���� ����Դϴ�.");
		tree3.setRecName("���");
		tree3.setRecPhoto("../resources/images/magnolia.jpg");
		
		TestTree tree4 = new TestTree("4", "tree4");
		tree4.setTreePerson("�����Ӱ� ������ ���");
		tree4.setTreeDescription("���� ��� ���� ����� �� ���� ��ŭ ���� ��Ư�ϰ� Ư���� ��ȥ�� ������ �־��.<br>"
				+ "�׷��� ������ �Ͽ��� �������̰� ��Ȳ�����ٰ� ���ظ� �ޱ⵵ �ؼ� ����� ��ó�� �ް� �����մϴ�.<br>"
				+ "������ ���� ���� ������ ã�� �ǰ� ���� ���, �Ű� ���� ö������ �κп� ���� ���� �����ϴ� �ſ� �������� ����Դϴ�.");
		tree4.setRecName("�����");
		tree4.setRecPhoto("../resources/images/parasitic.jpg");
		
		TestTree tree5 = new TestTree("5", "tree5");
		tree5.setTreePerson("�ڽŰ� �ְ� å�Ӱ� �ִ� ���");
		tree5.setTreeDescription("�������� �������� ���� �ſ� ���� �ſ� �������� ����Դϴ�.<br>"
				+ "����� ���� ��ħ�� '�� �� �� ���� ����'�̸� �ڽŰ� �ڽ��� ����ϴ� ������� ���ϰ� ���ѳ� �� �ִ� ����� �� �˰� �ֽ��ϴ�.<br>"
				+ "����� �ڽ��� ���ϴ� �Ͱ� �� ���� �߱��ϴ� �Ϳ� �η����� ���� �ٸ� �����κ��� ���� �����Ը��� �䱸�ϸ� ������ �޾Ƶ��� �� ���� ��ŭ ���� ����Դϴ�.");
		tree5.setRecName("�۷ϽôϾ�");
		tree5.setRecPhoto("../resources/images/gloxinia.jpg");
		
		TestTree tree6 = new TestTree("6", "tree6");
		tree6.setTreePerson("����ϰ� �ٸ� ������ �� ��췯���� ���");
		tree6.setTreeDescription("������� �̷� ��Ű� �ſ� ������ �ο��� �����մϴ�. ���� ģ������ ���� ������ �׵��� ���� ���� �ſ� �����մϴ�.<br>"
				+ "�̷� �����԰� ���� ������� ���� ������� ��� ���� ������ָ� ���� �ڱ� �ڽ��� ����Ű�� ���� ���� ������ �մϴ�.<br>"
				+ "������ �ް� �;��ϰ� �������� ����ޱ⸦ ���ϱ� ������ ����� ��������� �ʴ� ������� ���� ������� �غ� �Ǿ� �ֽ��ϴ�.");
		tree6.setRecName("����Ͼ�");
		tree6.setRecPhoto("../resources/images/begonia.jpg");
		
		TestTree tree7 = new TestTree("7", "tree7");
		tree7.setTreePerson("�ູ�ϰ� ��鸲 ���� ���");
		tree7.setTreeDescription("���ؽ��� ���� Ÿ���� �μ��� ���� ���� �Ǵ����� �ʽ��ϴ�.<br>"
				+ "�ڽ��� �ֺ��� ��ȸ�� �Ҹ��� ���� ������� �̾߱⸦ �� ����ִ� ���̸� ���ʿ� ġ��ġ�� �ʴ� ����� �� �ƴ� ���� ���� �������Դϴ�.<br>"
				+ "����� ��� ������� ���� ������ �λ��� ���� �ִٰ� �����մϴ�. ���ο� ������� ��Ͱų� ������ ���� �������� �ʱ� ������ ���ο� �����̳� ��翡 �����ϴ� ���� ���ϴ�.<br>"
				+ "��Ʈ������ ���� �������� ����ϸ� ������ �� ���� �ʴ� ���Դϴ�. �ð� ������ �� �ϰ� �ſ� ������ �Ӹ� �ƴ϶� �׻� �ູ�� �ð��� �������� ����մϴ�.");
		tree7.setRecName("�����з��̲�");
		tree7.setRecPhoto("../resources/images/cloud.jpg");
		
		TestTree tree8 = new TestTree("8", "tree8");
		tree8.setTreePerson("�ŷ����̰� ������ ��ġ�� ���");
		tree8.setTreeDescription("�� �ֺ��� ����� ���� ��� �ϸ� �׵��� ���� �� �ִ��� �� �ƴ� ����ִ� ����Դϴ�. ��� �������� ��ȭ�Ӱ� ��︮�� �ڹ����̰� �������� ����Դϴ�.<br>"
				+ "���� �Ͽ� ���� �������̸� ������ ���⵵ �ϰ�, ���� ������� �Ű�� ������� �ḻ�� ����⵵ ������ �� �ڽſ��� �����Ϸ��� ����մϴ�.<br>"
				+ "������ �ʴ� ȣ��ɰ� ��̷ο� �͵鿡 ���� �������� �ϳ� ���� ��̸� ������ ������ �װͿ� ���� ������ ������ ������ ���� �ʰ� �ൿ�ϴ� ����Դϴ�.");
		tree8.setRecName("��������");
		tree8.setRecPhoto("../resources/images/freesia.jpg");
		
		TestTree tree9 = new TestTree("9", "tree9");
		tree9.setTreePerson("��õ���̰� ���� ���� ���");
		tree9.setTreeDescription("�ڽſ��� �־� ���� �����̶�� �����ϸ� �� ������ �ִ��� ����ϱ� ���� ���� ����� �մϴ�.<br>"
				+ "�׸��� �ڽ��� ������ʳ� �޼��� ���� �͵��� �ſ� �ڶ������� ����� ������ �ںν��� ������ �־��.<br>"
				+ "������ ������ ����� �ڽ��� ��ٸ��� �ִٰ� �����ϸ� �ڽ��� �ؾ� �� �Ͽ� ���� �λ��� �ʹ� ª�ٰ� ������ ����Դϴ�.");
		tree9.setRecName("��Ǫ������");
		tree9.setRecPhoto("../resources/images/ash.jpg");
		
		treeList.add(tree1);
		treeList.add(tree2);
		treeList.add(tree3);
		treeList.add(tree4);
		treeList.add(tree5);
		treeList.add(tree6);
		treeList.add(tree7);
		treeList.add(tree8);
		treeList.add(tree9);
	}
	
	public ArrayList<TestTree> getAllTests() {
		return treeList;
	}
	
	public TestTree getTestTreeByID(String treeID) {
		TestTree testTreeByID = null;
		
		for (int i = 0; i < treeList.size(); i++) {
			TestTree testTree = treeList.get(i);
			if (testTree != null && testTree.getTreeID() != null && testTree.getTreeID().contentEquals(treeID)) {
				testTreeByID = testTree;
				break;
			}
		}
		
		return testTreeByID;
	}
}
