package flowershop.dao;


import flowershop.dto.Game;

import java.util.ArrayList;

public class GameResult {
	private Game[] result = new Game[32];
	private String[] ground = {"garden", "flowerpot"};
	private String[] color = {"red", "yellow", "white", "purple"};
	private String[] season = {"spring", "summer", "autumn", "winter"};
	private ArrayList<Game> game = new ArrayList<Game>();
	
/*
	ground -> ������ �ɴ� ���
	 - 1: garden, ������ ��� �� �Ĺ��� �ڶ�
	 - 2: flowerpot, ������ ���  �ʺ� �Ĺ��� �ڶ�
	 
	color -> ���ѿ��� �� ����1, ��ü
	 - 1: red, �丶�� �ֽ��� �Ѹ��� ������ ���� �ڶ�
	 - 2: yellow, ������ �ֽ��� �Ѹ��� ��Ȳ��/����� ���� �ڶ�
	 - 3: white, ���� �Ѹ��� ��� ���� �ڶ�
	 - 4: purple, ������ �Ѹ��� ��ȫ��/����� ���� �ڶ�
	
	season -> ���ѿ��� �� ����2, ���
	 - 1: spring, ���� �Ǿ�� ���� ����
	 - 2: summer, ������ �Ǿ�� ���� ����
	 - 3: autumn, ������ �Ǿ�� ���� ����
	 - 4: winter, �ܿ￡ �Ǿ�� ���� ����
*/
	
	public GameResult() {
		for (int i = 0; i < 2; i++) {
			for (int j = 0; j < 4; j++) {
				for (int k = 0; k < 4; k++) {
					result[i*16 + j*4 + k] = 
							new Game(ground[i], color[j], season[k]);
					result[i*16 + j*4 + k].setResult("");
					game.add(result[i*16 + j*4 + k]);
				}
			}
		}
		
		result[0].setResult("ö��");
		result[0].setImage("../resources/images/azalea.jpg");
		result[1].setResult("���");
		result[1].setImage("../resources/images/rose.jpg");
		result[2].setResult("����ȭ");
		result[2].setImage("../resources/images/sharon.jpg");
		result[3].setResult("���鳪��");
		result[3].setImage("../resources/images/camelia.jpg");
		
		result[4].setResult("������");
		result[4].setImage("../resources/images/forsythia.jpg");
		result[5].setResult("");
		result[6].setResult("�ݸ�");
		result[6].setResult("../resources/images/osmanthus.jpg");
		result[7].setResult("");
		
		result[8].setResult("���");
		result[8].setResult("../resources/images/magnolia.jpg");
		result[9].setResult("��ī�þ�");
		result[9].setImage("../resources/images/accacia.jpg");
		result[10].setResult("������");
		result[10].setImage("../resources/images/teaplant.jpg");
		result[11].setResult("���鳪��");
		result[11].setImage("../resources/images/camelia_white.jpg");
		
		result[12].setResult("���޷�");
		result[12].setImage("../resources/images/jindallae.jpg");
		result[13].setResult("�θ�");
		result[14].setImage("../resources/images/lespedeza.jpg");
		result[14].setResult("");
		result[15].setResult("");
		
		
		result[16].setResult("����");
		result[16].setImage("../resources/images/primpose.jpg");
		result[17].setResult("����ȭ");
		result[17].setImage("../resources/images/balsam.jpg");
		result[18].setResult("ä��ȭ");
		result[19].setImage("../resources/images/rosemoss.jpg");
		result[19].setResult("�Ƹ�������");
		result[19].setImage("../resources/images/amaryllis.jpg");
		
		result[20].setResult("�ε鷹");
		result[20].setImage("../resources/images/dandelion.jpg");
		result[21].setResult("�عٶ��");
		result[21].setImage("../resources/images/sunflower.jpg");
		result[22].setResult("��ȭ");
		result[22].setImage("../resources/images/chrysanthemum.jpg");
		result[23].setResult("����");
		result[23].setImage("../resources/images/orchid.jpg");
		
		result[24].setResult("����");
		result[24].setImage("../resources/images/snow.jpg");
		result[25].setResult("������");
		result[25].setImage("../resources/images/eggflower.jpg");
		result[26].setResult("�ڽ���");
		result[26].setImage("../resources/images/cosmos.jpg");
		result[27].setResult("");
		
		result[28].setResult("�����");
		result[28].setImage("../resources/images/violet.jpg");
		result[29].setResult("�����з��̲�");
		result[29].setImage("../resources/images/cloud.jpg");
		result[30].setResult("������");
		result[30].setImage("../resources/images/shinymint.jpg");
		result[31].setResult("�����");
		result[31].setImage("../resources/images/loveflower.jpg");
		
	}
	
	public ArrayList<Game> getAllTests() {
		return game;
	}

}
