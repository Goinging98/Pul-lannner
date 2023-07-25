package garden;

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

public class GardenPasing {
	public static final String KEY = "20230626SSYW5AOORNMTNSMCISGZZG";
	public static final String URL = "http://api.nongsaro.go.kr/service/garden";
	
	public static List<GardenList> parsingStep1(){
		try {
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("/gardenList");
			urlBuilder.append("?" + "apiKey=" + KEY);
			urlBuilder.append("&" + "numOfRows" + "=" + 300);
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
			List<GardenList> gList = new ArrayList<>();
			
			for(int i = 0; i < rowList.getLength(); i++) {
				Node node = rowList.item(i);
				if(node.getNodeType() == Node.ELEMENT_NODE) {
					Element e = (Element)node;
					int cntntsNo = getIntData(e, "cntntsNo");
					String cntntsSj = getStrData(e, "cntntsSj");
					String rtnFileSeCode = getStrData(e, "rtnFileSeCode");
					String rtnFileSn= getStrData(e, "rtnFileSn");
					String rtnOrginlFileNm= getStrData(e, "rtnOrginlFileNm");
					String rtnStreFileNm= getStrData(e, "rtnStreFileNm");
					String rtnFileCours= getStrData(e, "rtnFileCours");
					String rtnImageDc= getStrData(e, "rtnImageDc");
					String rtnThumbFileNm= getStrData(e, "rtnThumbFileNm");
					String rtnImgSeCode= getStrData(e, "rtnImgSeCode");
					String rtnFileUrl= getStrData(e, "rtnFileUrl");
					String rtnThumbFileUrl= getStrData(e, "rtnThumbFileUrl");
					GardenList gl = new GardenList(cntntsNo, cntntsSj, rtnFileSeCode, rtnFileSn, rtnOrginlFileNm, 
							rtnStreFileNm, rtnFileCours, rtnImageDc, rtnThumbFileNm, rtnImgSeCode, rtnFileUrl, rtnThumbFileUrl);
					gList.add(gl);
				}
			}
			return gList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static GardenDtl parsingStep2(GardenList gardenList) {
		try {
			GardenDtl gardenDtl = null;
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("/gardenDtl");
			urlBuilder.append("?" + "apiKey" + "=" + KEY);
			urlBuilder.append("&" + "cntntsNo" + "=" + gardenList.cntntsNo);
			
			System.out.println(urlBuilder);
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("GET"); // Get 방식으로 요청하는 코드
			conn.setRequestProperty("Content-type", "application/xml");
			
			if (conn.getResponseCode() < 200 || conn.getResponseCode() > 300) {
				System.out.println("페이지가 잘못 되었습니다.");
				return gardenDtl; 
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
					String plntbneNm = getStrData(e, "plntbneNm");
					String plntzrNm = getStrData(e, "plntzrNm");
					String distbNm = getStrData(e, "distbNm");
					String fmlNm = getStrData(e, "fmlNm");
					String fmlCodeNm = getStrData(e, "fmlCodeNm");
					String orgplceInfo = getStrData(e, "orgplceInfo");
					String adviseInfo = getStrData(e, "adviseInfo");
					String imageEvlLinkCours = getStrData(e, "imageEvlLinkCours");
					String growthHgInfo = getStrData(e, "growthHgInfo");
					String growthAraInfo = getStrData(e, "growthAraInfo");
					String lefStleInfo = getStrData(e, "lefStleInfo");
					String smellCode = getStrData(e, "smellCode");
					String smellCodeNm = getStrData(e, "smellCodeNm");
					String toxctyInfo = getStrData(e, "toxctyInfo");
					String prpgtEraInfo = getStrData(e, "prpgtEraInfo");
					String etcEraInfo = getStrData(e, "etcEraInfo");
					String managelevelCode = getStrData(e, "managelevelCode");
					String managelevelCodeNm = getStrData(e, "managelevelCodeNm");
					String grwtveCode = getStrData(e, "grwtveCode");
					String grwtveCodeNm = getStrData(e, "grwtveCodeNm");
					String grwhTpCode = getStrData(e, "grwhTpCode");
					String grwhTpCodeNm = getStrData(e, "grwhTpCodeNm");
					String winterLwetTpCode = getStrData(e, "winterLwetTpCode");
					String winterLwetTpCodeNm = getStrData(e, "winterLwetTpCodeNm");
					String hdCode = getStrData(e, "hdCode");
					String hdCodeNm = getStrData(e, "hdCodeNm");
					String frtlzrInfo = getStrData(e, "frtlzrInfo");
					String soilInfo = getStrData(e, "soilInfo");
					String watercycleSprngCode = getStrData(e, "watercycleSprngCode");
					String watercycleSprngCodeNm = getStrData(e, "watercycleSprngCodeNm");
					String watercycleSummerCode = getStrData(e, "watercycleSummerCode");
					String watercycleSummerCodeNm = getStrData(e, "watercycleSummerCodeNm");
					String watercycleAutumnCode = getStrData(e, "watercycleAutumnCode");
					String watercycleAutumnCodeNm = getStrData(e, "watercycleAutumnCodeNm");
					String watercycleWinterCode = getStrData(e, "watercycleWinterCode");
					String watercycleWinterCodeNm = getStrData(e, "watercycleWinterCodeNm");
					String dlthtsManageInfo = getStrData(e, "dlthtsManageInfo");
					String speclmanageInfo = getStrData(e, "speclmanageInfo");
					String fncltyInfo = getStrData(e, "fncltyInfo");
					String flpodmtBigInfo = getStrData(e, "flpodmtBigInfo");
					String flpodmtMddlInfo = getStrData(e, "flpodmtMddlInfo");
					String flpodmtSmallInfo = getStrData(e, "flpodmtSmallInfo");
					String managedemanddoCode = getStrData(e, "managedemanddoCode");
					String managedemanddoCodeNm = getStrData(e, "managedemanddoCodeNm");
					String clCode = getStrData(e, "clCode");
					String clCodeNm = getStrData(e, "clCodeNm");
					String grwhstleCode = getStrData(e, "grwhstleCode");
					String grwhstleCodeNm = getStrData(e, "grwhstleCodeNm");
					String indoorpsncpacompositionCode = getStrData(e, "indoorpsncpacompositionCode");
					String indoorpsncpacompositionCodeNm = getStrData(e, "indoorpsncpacompositionCodeNm");
					String eclgyCode = getStrData(e, "eclgyCode");
					String eclgyCodeNm = getStrData(e, "eclgyCodeNm");
					String lefmrkCode = getStrData(e, "lefmrkCode");
					String lefmrkCodeNm = getStrData(e, "lefmrkCodeNm");
					String lefcolrCode = getStrData(e, "lefcolrCode");
					String lefcolrCodeNm = getStrData(e, "lefcolrCodeNm");
					String ignSeasonCode = getStrData(e, "ignSeasonCode");
					String ignSeasonCodeNm = getStrData(e, "ignSeasonCodeNm");
					String flclrCode = getStrData(e, "flclrCode");
					String flclrCodeNm = getStrData(e, "flclrCodeNm");
					String fmldeSeasonCode = getStrData(e, "fmldeSeasonCode");
					String fmldeSeasonCodeNm = getStrData(e, "fmldeSeasonCodeNm");
					String fmldecolrCode = getStrData(e, "fmldecolrCode");
					String fmldecolrCodeNm = getStrData(e, "fmldecolrCodeNm");
					String prpgtmthCode = getStrData(e, "prpgtmthCode");
					String prpgtmthCodeNm = getStrData(e, "prpgtmthCodeNm");
					String lighttdemanddoCode = getStrData(e, "lighttdemanddoCode");
					String lighttdemanddoCodeNm = getStrData(e, "lighttdemanddoCodeNm");
					String postngplaceCode = getStrData(e, "postngplaceCode");
					String postngplaceCodeNm = getStrData(e, "postngplaceCodeNm");
					String dlthtsCode = getStrData(e, "dlthtsCode");
					String dlthtsCodeNm = getStrData(e, "dlthtsCodeNm");
					gardenDtl = new GardenDtl(gardenList, plntbneNm, plntzrNm, distbNm, fmlNm, 
							 fmlCodeNm, orgplceInfo, adviseInfo, imageEvlLinkCours, growthHgInfo, 
							 growthAraInfo, lefStleInfo, smellCode, smellCodeNm, toxctyInfo,
							 prpgtEraInfo, etcEraInfo, managelevelCode, managelevelCodeNm, grwtveCode,
							 grwtveCodeNm, grwhTpCode, grwhTpCodeNm, winterLwetTpCode, winterLwetTpCodeNm,
							 hdCode, hdCodeNm, frtlzrInfo, soilInfo, watercycleSprngCode,
							 watercycleSprngCodeNm, watercycleSummerCode, watercycleSummerCodeNm, watercycleAutumnCode, watercycleAutumnCodeNm,
							 watercycleWinterCode, watercycleWinterCodeNm, dlthtsManageInfo, speclmanageInfo, fncltyInfo,
							 flpodmtBigInfo, flpodmtMddlInfo, flpodmtSmallInfo, managedemanddoCode, managedemanddoCodeNm,
							 clCode, clCodeNm, grwhstleCode, grwhstleCodeNm, indoorpsncpacompositionCode,
							 indoorpsncpacompositionCodeNm, eclgyCode, eclgyCodeNm, lefmrkCode, lefmrkCodeNm,
							 lefcolrCode, lefcolrCodeNm, ignSeasonCode, ignSeasonCodeNm, flclrCode,
							 flclrCodeNm, fmldeSeasonCode, fmldeSeasonCodeNm, fmldecolrCode, fmldecolrCodeNm,
							 prpgtmthCode, prpgtmthCodeNm, lighttdemanddoCode, lighttdemanddoCodeNm, postngplaceCode,
							 postngplaceCodeNm, dlthtsCode, dlthtsCodeNm);
				}
			}
			
			return gardenDtl;
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
