package flower;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class FlowerDao {
	public int insert(Connection conn, Flower flower) {
		try {
			String sql = "INSERT INTO garden.flowerList"
					+ "(dataNo, fMonth, fDay, flowNm, flowLang, "
					+ "fileName1, fileName2, fileName3,"
					+ "imgUrl1, imgUrl2, imgUrl3, publishOrg)"
					+ "VALUE(?,?,?,?,?"
					+ "			,?,?,?"
					+ "			,?,?,?,?)";
					

			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;
			pstmt.setString(cnt++, flower.getDataNo());
			pstmt.setString(cnt++, flower.getfMonth());
			pstmt.setString(cnt++, flower.getfDay());
			pstmt.setString(cnt++, flower.getFlowNm());
			pstmt.setString(cnt++, flower.getFlowLang());
			pstmt.setString(cnt++, flower.getFileName1());
			pstmt.setString(cnt++, flower.getFileName2());
			pstmt.setString(cnt++, flower.getFileName3());
			pstmt.setString(cnt++, flower.getImgUrl1());
			pstmt.setString(cnt++, flower.getImgUrl2());
			pstmt.setString(cnt++, flower.getImgUrl3());
			pstmt.setString(cnt++, flower.getPublishOrg());

			int result = pstmt.executeUpdate();
			pstmt.close();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
