package dryGarden;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DryGardenDtlDao {
	
	public int insert(Connection conn, DryGardenDtl drygardenDtl) {
		try {
			String sql = "INSERT INTO drygardenDtl"
					+ "		(cntntsNo, cntntsSj, clNm, clCodeDc, scnm,"
					+ "distbNm, orgplce, stleSeNm, flwrInfo, lfclChngeInfo,"
					+ "rdxStleNm, grwtInfo, grwtseVeNm, grwhTpInfo, pswntrTpInfo, chartrInfo," 
					+ "lighttInfo, waterCycleInfo, prpgtInfo, hgtmMhmrInfo, dlthtsInfo," 
					+ "manageLevelNm, manageDemandNm, frtlzrInfo, batchPlaceInfo, tipInfo,"
					+ "mainImgUrl1, mainImgUrl2, lightImgUrl1, lightImgUrl2, lightImgUrl3)"
					+ " VALUE(?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?,?)";
							
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			int cnt = 1;
			pstmt.setInt(cnt++, drygardenDtl.getCntntsNo());
			pstmt.setString(cnt++, drygardenDtl.getCntntsSj());      
			pstmt.setString(cnt++, drygardenDtl.getClNm());          
			pstmt.setString(cnt++, drygardenDtl.getClCodeDc());      
			pstmt.setString(cnt++, drygardenDtl.getScnm());          
			pstmt.setString(cnt++, drygardenDtl.getDistbNm());       
			pstmt.setString(cnt++, drygardenDtl.getOrgplce());       
			pstmt.setString(cnt++, drygardenDtl.getStleSeNm());      
			pstmt.setString(cnt++, drygardenDtl.getFlwrInfo());      
			pstmt.setString(cnt++, drygardenDtl.getLfclChngeInfo()); 
			pstmt.setString(cnt++, drygardenDtl.getRdxStleNm());     
			pstmt.setString(cnt++, drygardenDtl.getGrwtInfo());      
			pstmt.setString(cnt++, drygardenDtl.getGrwtseVeNm());    
			pstmt.setString(cnt++, drygardenDtl.getGrwhTpInfo());    
			pstmt.setString(cnt++, drygardenDtl.getPswntrTpInfo());  
			pstmt.setString(cnt++, drygardenDtl.getChartrInfo());    
			pstmt.setString(cnt++, drygardenDtl.getLighttInfo());    
			pstmt.setString(cnt++, drygardenDtl.getWaterCycleInfo());
			pstmt.setString(cnt++, drygardenDtl.getPrpgtInfo());     
			pstmt.setString(cnt++, drygardenDtl.getHgtmMhmrInfo());  
			pstmt.setString(cnt++, drygardenDtl.getDlthtsInfo());    
			pstmt.setString(cnt++, drygardenDtl.getManageLevelNm()); 
			pstmt.setString(cnt++, drygardenDtl.getManageDemandNm());
			pstmt.setString(cnt++, drygardenDtl.getFrtlzrInfo());    
			pstmt.setString(cnt++, drygardenDtl.getBatchPlaceInfo());
			pstmt.setString(cnt++, drygardenDtl.getTipInfo());       
			pstmt.setString(cnt++, drygardenDtl.getMainImgUrl1());   
			pstmt.setString(cnt++, drygardenDtl.getMainImgUrl2());   
			pstmt.setString(cnt++, drygardenDtl.getLightImgUrl1());  
			pstmt.setString(cnt++, drygardenDtl.getLightImgUrl2());  
			pstmt.setString(cnt++, drygardenDtl.getLightImgUrl3());  
			
			int result =pstmt.executeUpdate();
			pstmt.close();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

}
