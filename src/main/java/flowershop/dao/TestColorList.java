package flowershop.dao;


import flowershop.dto.TestColor;

import java.util.ArrayList;

public class TestColorList {
	private ArrayList<TestColor> colorList = new ArrayList<TestColor>();
	
	public TestColorList() {
		TestColor color1 = new TestColor("1", "color1");
		color1.setColorPerson("ȥ�ڸ��� �ð��� ���� ���");
		color1.setColorDescription("�ٸ� ������ �ִ� �ͺ��� ȥ�ڸ��� �ð��� ������ ���� �� �ູ���մϴ�.<br>"
				+ "�Ѱ��ο� �ָ����� �ò����� ���Ӻ��ٴ�, ������ TV�� ���� ���� ȥ�ڸ��� �ð��� �����ϴ�.");
		color1.setRecName("������");
		color1.setRecPhoto("../resources/images/cactus_flower.jpg");
		
		TestColor color2 = new TestColor("2", "color2");
		color2.setColorPerson("Ȯ���� ȣ��ȣ�� �Ǵܷ��� ���� ���");
		color2.setColorDescription("���θ��� ȣ��ȣ�� Ȯ��������, �ٸ� ������Դ� �巯���� �ʽ��ϴ�.<br>"
				+ "�ΰ����迡 ���ؼ��� ���� ������ �и��ϱ� ������ ����� �����ϴ� �������� ������ ���� ���踦 �����մϴ�.");
		color2.setRecName("�ղ�");
		color2.setRecPhoto("../resources/images/safflower.jpg");
		
		TestColor color3 = new TestColor("3", "color3");
		color3.setColorPerson("���ٸ� ������ ���� ���");
		color3.setColorDescription("�ٸ� ������ �Բ� �������� �ڽŸ��� ������ ���� �پ��� �͵��� ����ϰ� �մϴ�.<br>"
				+ "���� �پ��� ���� �����ϸ鼭 ���ο� ���� �����⵵ �մϴ�.");
		color3.setRecName("������� ����");
		color3.setRecPhoto("../resources/images/poppy_blue.jpg");
		
		TestColor color4 = new TestColor("4", "color4");
		color4.setColorPerson("�������� ��ȹ�ϴ� ���");
		color4.setColorDescription("�̸� ������ ��ȹ�� ���� �ൿ�� �ϸ�, �浿���� �ൿ�� ���� ���� �ʽ��ϴ�."
				+ "�̸� ��ȹ�� ������ �ൿ�ϱ� ������ �Ǽ��� ���� ���Դϴ�.");
		color4.setRecName("��ī");
		color4.setRecPhoto("../resources/images/yucca.jpg");
		
		colorList.add(color1);
		colorList.add(color2);
		colorList.add(color3);
		colorList.add(color4);	
	}
	
	public ArrayList<TestColor> getAllTests() {
		return colorList;
	}
	
	public TestColor getTestColorByID(String colorID) {
		TestColor testColorByID = null;
		
		for (int i = 0; i < colorList.size(); i++) {
			TestColor testColor = colorList.get(i);
			if (testColor != null && testColor.getColorID() != null && testColor.getColorID().contentEquals(colorID)) {
				testColorByID = testColor;
				break;
			}
		}
		
		return testColorByID;
	}
}
