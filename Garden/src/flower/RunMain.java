package flower;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class RunMain {
	public static void main(String[] args) throws SQLException {
		Connection conn = JDBCTemplate.openConnection();
		AreaParsing api = new AreaParsing();

		// Flower List  
		List<Flower> flist = api.flowerparsing();
		
		FlowerDao fdao = new FlowerDao();
		for(Flower f : flist) {
			fdao.insert(conn, f);
		}
		System.out.println("list inserted");
		
		// Flower Detail  
		List<FlowerDtl> list = new ArrayList<>();
		for (int i = 1; i < 367; i++) {
			list.addAll(api.dtlparsing(i));
			System.out.println("dataNo = "+i);
		}
		
		FlowerDtlDao ddao = new FlowerDtlDao();
		for(FlowerDtl g : list) {
			ddao.insert(conn, g);
		}
		System.out.println("detail inserted");
		

		conn.commit();

	}
}
