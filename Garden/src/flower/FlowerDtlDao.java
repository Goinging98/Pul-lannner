package flower;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class FlowerDtlDao {
	public int insert(Connection conn, FlowerDtl flowerDtl) {
		try {
			String sql = "INSERT INTO garden.flowerDetail" 
					+ "(dataNo, fMonth, fDay, flowNm, fSctNm, "
					+ "fEngNm, flowLang, fContent, fUse, fGrow, "
					+ "fType, fileName1, fileName2, fileName3," 
					+ "imgUrl1, imgUrl2, imgUrl3)" 
					+ "VALUE(?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?" 
					+ "			,?,?,?)";
		
			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;
			pstmt.setString(cnt++, flowerDtl.getDataNo());
			pstmt.setString(cnt++, flowerDtl.getfMonth());
			pstmt.setString(cnt++, flowerDtl.getfDay());
			pstmt.setString(cnt++, flowerDtl.getFlowNm());
			pstmt.setString(cnt++, flowerDtl.getfSctNm());
			pstmt.setString(cnt++, flowerDtl.getfEngNm());
			pstmt.setString(cnt++, flowerDtl.getFlowLang());
			pstmt.setString(cnt++, flowerDtl.getfContent());
			pstmt.setString(cnt++, flowerDtl.getfUse());
			pstmt.setString(cnt++, flowerDtl.getfGrow());
			pstmt.setString(cnt++, flowerDtl.getfType());
			pstmt.setString(cnt++, flowerDtl.getFileName1());
			pstmt.setString(cnt++, flowerDtl.getFileName2());
			pstmt.setString(cnt++, flowerDtl.getFileName3());
			pstmt.setString(cnt++, flowerDtl.getImgUrl1());
			pstmt.setString(cnt++, flowerDtl.getImgUrl2());
			pstmt.setString(cnt++, flowerDtl.getImgUrl3());

			int result = pstmt.executeUpdate();
			pstmt.close();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
