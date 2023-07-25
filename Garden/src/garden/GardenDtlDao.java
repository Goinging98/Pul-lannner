package garden;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class GardenDtlDao {
	
	public int insert(Connection conn, GardenDtl gardenDtl) {
		try {
			String sql = "INSERT INTO GardenDtl"
					+ "		(cntntsNo, cntntsSj, rtnFileSeCode, rtnFileSn, rtnOrginlFileNm, "
					+ "rtnStreFileNm, rtnFileCours, rtnImageDc, rtnThumbFileNm, rtnImgSeCode, "
					+ "rtnFileUrl, rtnThumbFileUrl, plntbneNm, plntzrNm, distbNm, fmlNm," 
					+ "fmlCodeNm, orgplceInfo, adviseInfo, imageEvlLinkCours, growthHgInfo," 
					+ "growthAraInfo, lefStleInfo, smellCode, smellCodeNm, toxctyInfo,"
					+ "prpgtEraInfo, etcEraInfo, managelevelCode, managelevelCodeNm, grwtveCode,"
					+ "grwtveCodeNm, grwhTpCode, grwhTpCodeNm, winterLwetTpCode, winterLwetTpCodeNm,"
					+ "hdCode, hdCodeNm, frtlzrInfo, soilInfo, watercycleSprngCode,"
					+ "watercycleSprngCodeNm, watercycleSummerCode, watercycleSummerCodeNm, watercycleAutumnCode, watercycleAutumnCodeNm,"
					+ "watercycleWinterCode, watercycleWinterCodeNm, dlthtsManageInfo, speclmanageInfo, fncltyInfo,"
					+ "flpodmtBigInfo, flpodmtMddlInfo, flpodmtSmallInfo, managedemanddoCode, managedemanddoCodeNm,"
					+ "clCode, clCodeNm, grwhstleCode, grwhstleCodeNm, indoorpsncpacompositionCode,"
					+ "indoorpsncpacompositionCodeNm, eclgyCode, eclgyCodeNm, lefmrkCode, lefmrkCodeNm,"
					+ "lefcolrCode, lefcolrCodeNm, ignSeasonCode, ignSeasonCodeNm, flclrCode,"
					+ "flclrCodeNm, fmldeSeasonCode, fmldeSeasonCodeNm, fmldecolrCode, fmldecolrCodeNm,"
					+ "prpgtmthCode, prpgtmthCodeNm, lighttdemanddoCode, lighttdemanddoCodeNm, postngplaceCode,"
					+ "postngplaceCodeNm, dlthtsCode, dlthtsCodeNm)"
					+ " VALUE(?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?)";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			int cnt = 1;
			pstmt.setInt(cnt++, gardenDtl.getCntntsNo());
			pstmt.setString(cnt++, gardenDtl.getCntntsSj());
			pstmt.setString(cnt++, gardenDtl.getRtnFileSeCode());
			pstmt.setString(cnt++, gardenDtl.getRtnFileSn());
			pstmt.setString(cnt++, gardenDtl.getRtnOrginlFileNm());
			pstmt.setString(cnt++, gardenDtl.getRtnStreFileNm());
			pstmt.setString(cnt++, gardenDtl.getRtnFileCours());
			pstmt.setString(cnt++, gardenDtl.getRtnImageDc());
			pstmt.setString(cnt++, gardenDtl.getRtnThumbFileNm());
			pstmt.setString(cnt++, gardenDtl.getRtnImgSeCode());
			pstmt.setString(cnt++, gardenDtl.getRtnFileUrl());
			pstmt.setString(cnt++, gardenDtl.getRtnThumbFileUrl());
			pstmt.setString(cnt++, gardenDtl.getPlntbneNm());
			pstmt.setString(cnt++, gardenDtl.getPlntzrNm());
			pstmt.setString(cnt++, gardenDtl.getDistbNm());
			pstmt.setString(cnt++, gardenDtl.getFmlNm());
			pstmt.setString(cnt++, gardenDtl.getFmlCodeNm());
			pstmt.setString(cnt++, gardenDtl.getOrgplceInfo());
			pstmt.setString(cnt++, gardenDtl.getAdviseInfo());
			pstmt.setString(cnt++, gardenDtl.getImageEvlLinkCours());
			pstmt.setString(cnt++, gardenDtl.getGrowthHgInfo());
			pstmt.setString(cnt++, gardenDtl.getGrowthAraInfo());
			pstmt.setString(cnt++, gardenDtl.getLefStleInfo());
			pstmt.setString(cnt++, gardenDtl.getSmellCode());
			pstmt.setString(cnt++, gardenDtl.getSmellCodeNm());
			pstmt.setString(cnt++, gardenDtl.getToxctyInfo());
			pstmt.setString(cnt++, gardenDtl.getPrpgtEraInfo());
			pstmt.setString(cnt++, gardenDtl.getEtcEraInfo());
			pstmt.setString(cnt++, gardenDtl.getManagelevelCode());
			pstmt.setString(cnt++, gardenDtl.getManagelevelCode());
			pstmt.setString(cnt++, gardenDtl.getGrwtveCode());
			pstmt.setString(cnt++, gardenDtl.getGrwtveCodeNm());
			pstmt.setString(cnt++, gardenDtl.getGrwhTpCode());
			pstmt.setString(cnt++, gardenDtl.getGrwhTpCodeNm());
			pstmt.setString(cnt++, gardenDtl.getWinterLwetTpCode());
			pstmt.setString(cnt++, gardenDtl.getWinterLwetTpCodeNm());
			pstmt.setString(cnt++, gardenDtl.getHdCode());
			pstmt.setString(cnt++, gardenDtl.getHdCodeNm());
			pstmt.setString(cnt++, gardenDtl.getFrtlzrInfo());
			pstmt.setString(cnt++, gardenDtl.getSoilInfo());
			pstmt.setString(cnt++, gardenDtl.getWatercycleSprngCode());
			pstmt.setString(cnt++, gardenDtl.getWatercycleSprngCodeNm());
			pstmt.setString(cnt++, gardenDtl.getWatercycleSummerCode());
			pstmt.setString(cnt++, gardenDtl.getWatercycleSummerCodeNm());
			pstmt.setString(cnt++, gardenDtl.getWatercycleAutumnCode());
			pstmt.setString(cnt++, gardenDtl.getWatercycleAutumnCodeNm());
			pstmt.setString(cnt++, gardenDtl.getWatercycleWinterCode());
			pstmt.setString(cnt++, gardenDtl.getWatercycleWinterCodeNm());
			pstmt.setString(cnt++, gardenDtl.getDlthtsManageInfo());
			pstmt.setString(cnt++, gardenDtl.getSpeclmanageInfo());
			pstmt.setString(cnt++, gardenDtl.getFncltyInfo());
			pstmt.setString(cnt++, gardenDtl.getFlpodmtBigInfo());
			pstmt.setString(cnt++, gardenDtl.getFlpodmtMddlInfo());
			pstmt.setString(cnt++, gardenDtl.getFlpodmtSmallInfo());
			pstmt.setString(cnt++, gardenDtl.getManagedemanddoCode());
			pstmt.setString(cnt++, gardenDtl.getManagedemanddoCodeNm());
			pstmt.setString(cnt++, gardenDtl.getClCode());
			pstmt.setString(cnt++, gardenDtl.getClCodeNm());
			pstmt.setString(cnt++, gardenDtl.getGrwhstleCode());
			pstmt.setString(cnt++, gardenDtl.getGrwhstleCodeNm());
			pstmt.setString(cnt++, gardenDtl.getIndoorpsncpacompositionCode());
			pstmt.setString(cnt++, gardenDtl.getIndoorpsncpacompositionCodeNm());
			pstmt.setString(cnt++, gardenDtl.getEclgyCode());
			pstmt.setString(cnt++, gardenDtl.getEclgyCodeNm());
			pstmt.setString(cnt++, gardenDtl.getLefmrkCode());
			pstmt.setString(cnt++, gardenDtl.getLefmrkCodeNm());
			pstmt.setString(cnt++, gardenDtl.getLefcolrCode());
			pstmt.setString(cnt++, gardenDtl.getLefcolrCodeNm());
			pstmt.setString(cnt++, gardenDtl.getIgnSeasonCode());
			pstmt.setString(cnt++, gardenDtl.getIgnSeasonCodeNm());
			pstmt.setString(cnt++, gardenDtl.getFlclrCode());
			pstmt.setString(cnt++, gardenDtl.getFlclrCodeNm());
			pstmt.setString(cnt++, gardenDtl.getFmldeSeasonCode());
			pstmt.setString(cnt++, gardenDtl.getFmldeSeasonCodeNm());
			pstmt.setString(cnt++, gardenDtl.getFmldecolrCode());
			pstmt.setString(cnt++, gardenDtl.getFmldecolrCodeNm());
			pstmt.setString(cnt++, gardenDtl.getPrpgtmthCode());
			pstmt.setString(cnt++, gardenDtl.getPrpgtmthCodeNm());
			pstmt.setString(cnt++, gardenDtl.getLighttdemanddoCode());    
			pstmt.setString(cnt++, gardenDtl.getLighttdemanddoCodeNm());    
			pstmt.setString(cnt++, gardenDtl.getPostngplaceCode());    
			pstmt.setString(cnt++, gardenDtl.getPostngplaceCodeNm());
			pstmt.setString(cnt++, gardenDtl.getDlthtsCode());
			pstmt.setString(cnt++, gardenDtl.getDlthtsCodeNm());

			int result =pstmt.executeUpdate();
			pstmt.close();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

}
