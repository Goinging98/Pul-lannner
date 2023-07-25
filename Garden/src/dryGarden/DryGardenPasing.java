package dryGarden;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class DryGardenPasing {
	public static final String KEY = "20230626A7HLMARRQQNQRSQW9RUOBW";
	public static final String URL = "http://api.nongsaro.go.kr/service/dryGarden";
	public static List<DryGardenList> parsingStep1(){
		try {
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("/dryGardenList");
			urlBuilder.append("?" + "apiKey=" + KEY);
			urlBuilder.append("&" + "numOfRows" + "=" + 400);
			System.out.println(urlBuilder);
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/xml");
			System.out.println("Response code: " + conn.getResponseCode());
			
			
			if (conn.getResponseCode() < 200 || conn.getResponseCode() >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return null;
			}
			
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(conn.getInputStream()); // xml부를 가져와 파싱할 준비 완료!
			doc.normalizeDocument(); // xml을 표준으로 다시 정리해주는 기능 -> 해도 되고 안해도 될수도 있으나.
			// 셋팅부 끝!
			
			System.out.println("Root Element : " + doc.getDocumentElement().getNodeName());
			System.out.println("-----------------------------------------------------------------");
			
			NodeList rowList = doc.getElementsByTagName("item");
			List<DryGardenList> dgList = new ArrayList<>();
			
			for(int i = 0; i < rowList.getLength(); i++) {
				Node node = rowList.item(i);
				if(node.getNodeType() == Node.ELEMENT_NODE) {
					Element e = (Element)node;
					int cntntsNo = getIntData(e, "cntntsNo");
					String cntntsSj = getStrData(e, "cntntsSj");
					String clNm = getStrData(e, "clNm");
					String scnm= getStrData(e, "scnm");
					String thumbImgUrl1= getStrData(e, "thumbImgUrl1");
					String imgUrl1= getStrData(e, "imgUrl1");
					String thumbImgUrl2= getStrData(e, "thumbImgUrl2");
					String imgUrl2= getStrData(e, "imgUrl2");
					DryGardenList dgl = new DryGardenList(cntntsNo, cntntsSj, clNm, scnm, thumbImgUrl1, 
							imgUrl1, thumbImgUrl2, imgUrl2);
					dgList.add(dgl);
				}
			}
			return dgList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static DryGardenDtl parsingStep2(DryGardenList drygardenList) {
		try {
			DryGardenDtl dryGardenDtl = null;
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("/dryGardenDtl");
			urlBuilder.append("?" + "apiKey" + "=" + KEY);
			urlBuilder.append("&" + "cntntsNo" + "=" + drygardenList.cntntsNo);
			
			System.out.println(urlBuilder);
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("GET"); // Get 방식으로 요청하는 코드
			conn.setRequestProperty("Content-type", "application/xml");
			
			if (conn.getResponseCode() < 200 || conn.getResponseCode() > 300) {
				System.out.println("페이지가 잘못 되었습니다.");
				return dryGardenDtl; 
			}
			
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(conn.getInputStream()); // xml부를 가져와 파싱할 준비 완료!
			doc.normalizeDocument(); // xml을 표준으로 다시 정리해주는 기능 -> 해도 되고 안해도 될수도 있으나.
			// 셋팅부 끝!
			
			System.out.println("Root Element : " + doc.getDocumentElement().getNodeName());
			System.out.println("-----------------------------------------------------------------");
			
			NodeList rowList = doc.getElementsByTagName("item");
			
			for(int i = 0; i < rowList.getLength(); i++) {
				Node node = rowList.item(i);
				if(node.getNodeType() == Node.ELEMENT_NODE) {
					Element e = (Element)node;
					String cntntsSj = getStrData(e, "cntntsSj");
					String clNm = getStrData(e, "clNm");
					String clCodeDc = getStrData(e, "clCodeDc");
					String scnm = getStrData(e, "scnm");
					String distbNm = getStrData(e, "distbNm");
					String orgplce = getStrData(e, "orgplce");
					String stleSeNm = getStrData(e, "stleSeNm");
					String flwrInfo = getStrData(e, "flwrInfo");
					String lfclChngeInfo = getStrData(e, "lfclChngeInfo");
					String rdxStleNm = getStrData(e, "rdxStleNm");
					String grwtInfo = getStrData(e, "grwtInfo");
					String grwtseVeNm = getStrData(e, "grwtseVeNm");
					String grwhTpInfo = getStrData(e, "grwhTpInfo");
					String pswntrTpInfo = getStrData(e, "pswntrTpInfo");
					String chartrInfo = getStrData(e, "chartrInfo");
					String lighttInfo = getStrData(e, "lighttInfo");
					String waterCycleInfo = getStrData(e, "waterCycleInfo");
					String prpgtInfo = getStrData(e, "prpgtInfo");
					String hgtmMhmrInfo = getStrData(e, "hgtmMhmrInfo");
					String dlthtsInfo = getStrData(e, "dlthtsInfo");
					String manageLevelNm = getStrData(e, "manageLevelNm");
					String manageDemandNm = getStrData(e, "manageDemandNm");
					String frtlzrInfo = getStrData(e, "frtlzrInfo");
					String batchPlaceInfo = getStrData(e, "batchPlaceInfo");
					String tipInfo = getStrData(e, "tipInfo");
					String mainImgUrl1 = getStrData(e, "mainImgUrl1");
					String mainImgUrl2 = getStrData(e, "mainImgUrl2");
					String lightImgUrl1 = getStrData(e, "lightImgUrl1");
					String lightImgUrl2 = getStrData(e, "lightImgUrl2");
					String lightImgUrl3 = getStrData(e, "lightImgUrl3");
					
					dryGardenDtl = new DryGardenDtl(drygardenList,
					cntntsSj,      
					clNm,          
					clCodeDc,      
					scnm,          
					distbNm,       
					orgplce,       
					stleSeNm,      
					flwrInfo,      
					lfclChngeInfo, 
					rdxStleNm,     
					grwtInfo,      
					grwtseVeNm,    
					grwhTpInfo,    
					pswntrTpInfo,  
					chartrInfo,    
					lighttInfo,    
					waterCycleInfo,
					prpgtInfo,     
					hgtmMhmrInfo,  
					dlthtsInfo,    
					manageLevelNm, 
					manageDemandNm,
					frtlzrInfo,    
					batchPlaceInfo,
					tipInfo,       
					mainImgUrl1,   
					mainImgUrl2,   
					lightImgUrl1,  
					lightImgUrl2,  
					lightImgUrl3);  

				}
			}
			
			return dryGardenDtl;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

	private static String getStrData(Element eElement, String tagName){
		try {
			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
		} catch (Exception e) {
			return null;
		}
	}

	private static int getIntData(Element eElement, String tagName){
		try {
			return Integer.parseInt(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}

}
