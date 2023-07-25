package dryGarden;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RunMain {
	public static void main(String[] args) throws SQLException {
		Connection conn = JDBCTemplate.openConnection();
		
		List<DryGardenList> list = DryGardenPasing.parsingStep1();
		List<DryGardenDtl> dgDList = new ArrayList<>();
		for(int i = 0; i < list.size(); i++) {
			DryGardenDtl drygardenDtl = DryGardenPasing.parsingStep2(list.get(i));
//			System.out.println("파싱갯수 : " + list.size());
			if(drygardenDtl != null) {
				dgDList.add(drygardenDtl);
			}
			System.out.println();
			DryGardenDtlDao dao = new DryGardenDtlDao();
			for (DryGardenDtl g : dgDList) {
				dao.insert(conn, g);
				System.out.println(g);
			}
		}
		
//		실내정원용 식물리스트
//		GardenPasing api = new GardenPasing();
//		List<GardenList> list = api.parsing();
//		System.out.println("파싱 갯수 : " + list.size());
//		
//		GardenListDao dao = new GardenListDao();
//		for(GardenList g : list) {
//			dao.insert(conn, g);
//			System.out.println(g);
//		}
		
//		실내 정원용 디테일 리스트
//		GardenPasing api = new GardenPasing();
//		List<GardenDtl> list = api.parsingStep2(list.get(api));
//		System.out.println("파싱 갯수 :" + list.size());
//		
//		GardenDtlDao dao = new GardenDtlDao();
//		for(GardenDtl gd : list) {
//			dao.insert(conn, gd);
//			System.out.println(gd);
//		}
		
		conn.commit();
	}
}
