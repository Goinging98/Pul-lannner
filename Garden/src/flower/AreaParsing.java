package flower;

import java.io.BufferedReader;
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

public class AreaParsing {
	public static final String KEY_ENCODING = "%2BY9zF4Ltj404JvHj56BCCzGR%2Fwf%2FE584r2XkulD1gcySbpCQ%2FO2WMbzNYoZ7YIAAyrVuUgsONBcoXiMRHNmpxg%3D%3D";
	public static final String KEY_DECODING = "+Y9zF4Ltj404JvHj56BCCzGR/wf/E584r2XkulD1gcySbpCQ/O2WMbzNYoZ7YIAAyrVuUgsONBcoXiMRHNmpxg==";
	public static final String URL = "http://apis.data.go.kr/1390804/NihhsTodayFlowerInfo01";

	List<Flower> flowerparsing() {
		try {
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("/selectTodayFlowerList01");
			urlBuilder.append("?" + "serviceKey" + "=" + KEY_ENCODING);
			urlBuilder.append("&" + "pageNo" + "=" + 1);
			urlBuilder.append("&" + "numOfRows" + "=" + 366);
			System.out.println(urlBuilder);
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/xml");
			System.out.println("Response code: " + conn.getResponseCode());

			BufferedReader rd;

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

			NodeList rowList = doc.getElementsByTagName("result");
			List<Flower> fList = new ArrayList<>();

			for (int i = 0; i < rowList.getLength(); i++) {
				Node node = rowList.item(i);
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					Element e = (Element) node;
					String dataNo = getStrData(e, "dataNo");
					String fMonth = getStrData(e, "fMonth");
					String fDay = getStrData(e, "fDay");
					String flowNm = getStrData(e, "flowNm");
					String flowLang = getStrData(e, "flowLang");
					String fileName1 = getStrData(e, "fileName1");
					String fileName2 = getStrData(e, "fileName2");
					String fileName3 = getStrData(e, "fileName3");
					String imgUrl1 = getStrData(e, "imgUrl1");
					String imgUrl2 = getStrData(e, "imgUrl2");
					String imgUrl3 = getStrData(e, "imgUrl3");
					String publishOrg = getStrData(e, "publishOrg");
					Flower fl = new Flower(dataNo, fMonth, fDay, flowNm, flowLang, fileName1, fileName2, fileName3,
							imgUrl1, imgUrl2, imgUrl3, publishOrg);
					fList.add(fl);
				}
			}
			return fList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// 2. 오늘의 꽃 상세보기 Flower Detail
	List<FlowerDtl> dtlparsing(int dataNum) {
		try {
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("/selectTodayFlowerView01");
			urlBuilder.append("?" + "serviceKey" + "=" + KEY_ENCODING);
			urlBuilder.append("&dataNo=" + dataNum);

			System.out.println(urlBuilder);
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/xml");
			System.out.println("Response code: " + conn.getResponseCode());

			BufferedReader rd;

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

			NodeList rowList = doc.getElementsByTagName("result");
			List<FlowerDtl> DList = new ArrayList<>();

			for (int i = 0; i < rowList.getLength(); i++) {
				Node node = rowList.item(i);
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					Element e = (Element) node;
					String dataNo = getStrData(e, "dataNo");
					String fMonth = getStrData(e, "fMonth");
					String fDay = getStrData(e, "fDay");
					String flowNm = getStrData(e, "flowNm");
					String fSctNm = getStrData(e, "fSctNm");
					String fEngNm = getStrData(e, "fEngNm");
					String flowLang = getStrData(e, "flowLang");
					String fContent = getStrData(e, "fContent");
					String fUse = getStrData(e, "fUse");
					String fGrow = getStrData(e, "fGrow");
					String fType = getStrData(e, "fType");
					String fileName1 = getStrData(e, "fileName1");
					String fileName2 = getStrData(e, "fileName2");
					String fileName3 = getStrData(e, "fileName3");
					String imgUrl1 = getStrData(e, "imgUrl1");
					String imgUrl2 = getStrData(e, "imgUrl2");
					String imgUrl3 = getStrData(e, "imgUrl3");

					FlowerDtl dl = new FlowerDtl(dataNo, fMonth, fDay, flowNm, fSctNm, fEngNm, flowLang, fContent, fUse,
							fGrow, fType, fileName1, fileName2, fileName3, imgUrl1, imgUrl2, imgUrl3);
					DList.add(dl);
				}
			}
			return DList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}


	private static String getStrData(Element eElement, String tagName) {
		try {
			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
		} catch (Exception e) {
			return null;
		}
	}

	private static int getIntData(Element eElement, String tagName) {
		try {
			return Integer.parseInt(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}

}
