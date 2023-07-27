package com.multi.bbs.plantSearch.model.vo;

public class GardenDtl extends GardenList{
	public String plntbneNm;
	public String plntzrNm;
	public String distbNm;
	public String fmlNm;
	public String fmlCodeNm;
	public String orgplceInfo;
	public String adviseInfo;
	public String imageEvlLinkCours;
	public String growthHgInfo;
	public String growthAraInfo;
	public String lefStleInfo;
	public String smellCode;
	public String smellCodeNm;
	public String toxctyInfo;
	public String prpgtEraInfo;
	public String etcEraInfo;
	public String managelevelCode;
	public String managelevelCodeNm;
	public String grwtveCode;
	public String grwtveCodeNm;
	public String grwhTpCode;
	public String grwhTpCodeNm;
	public String winterLwetTpCode;
	public String winterLwetTpCodeNm;
	public String hdCode;
	public String hdCodeNm;
	public String frtlzrInfo;
	public String soilInfo;
	public String watercycleSprngCode;
	public String watercycleSprngCodeNm;
	public String watercycleSummerCode;
	public String watercycleSummerCodeNm;
	public String watercycleAutumnCode;
	public String watercycleAutumnCodeNm;
	public String watercycleWinterCode;
	public String watercycleWinterCodeNm;
	public String dlthtsManageInfo;
	public String speclmanageInfo;
	public String fncltyInfo;
	public String flpodmtBigInfo;
	public String flpodmtMddlInfo;
	public String flpodmtSmallInfo;
	public String managedemanddoCode;
	public String managedemanddoCodeNm;
	public String clCode;
	public String clCodeNm;
	public String grwhstleCode;
	public String grwhstleCodeNm;
	public String indoorpsncpacompositionCode;
	public String indoorpsncpacompositionCodeNm;
	public String eclgyCode;
	public String eclgyCodeNm;
	public String lefmrkCode;
	public String lefmrkCodeNm;
	public String lefcolrCode;
	public String lefcolrCodeNm;
	public String ignSeasonCode;
	public String ignSeasonCodeNm;
	public String flclrCode;
	public String flclrCodeNm;
	public String fmldeSeasonCode;
	public String fmldeSeasonCodeNm;
	public String fmldecolrCode;
	public String fmldecolrCodeNm;
	public String prpgtmthCode;
	public String prpgtmthCodeNm;
	public String lighttdemanddoCode;
	public String lighttdemanddoCodeNm;
	public String postngplaceCode;
	public String postngplaceCodeNm;
	public String dlthtsCode;
	public String dlthtsCodeNm;
	
//	추가한코드
	private String manageleveltext;
	private String growthrate;
	private String humidity;
	private String growthTemperature;
	private String leafShape;
	private String orgplce;
	private String smellCodeName;
	private String toxin;
	private String prpgtEra;
	private String etcEra;
	private String frtlzr;
	private String dlthtsManage;
	private String watercycleSprng;
	private String watercycleSummer;
	private String watercycleAutumn;
	private String watercycleWinter;
	private String imageA;

	
	
	public GardenDtl() {
		super();
	}
	public GardenDtl(int cntntsNo, String cntntsSj, String rtnFileSeCode, String rtnFileSn, String rtnOrginlFileNm,
			String rtnStreFileNm, String rtnFileCours, String rtnImageDc, String rtnThumbFileNm, String rtnImgSeCode,
			String rtnFileUrl, String rtnThumbFileUrl) {
		super(cntntsNo, cntntsSj, rtnFileSeCode, rtnFileSn, rtnOrginlFileNm, rtnStreFileNm, rtnFileCours, rtnImageDc,
				rtnThumbFileNm, rtnImgSeCode, rtnFileUrl, rtnThumbFileUrl);
	}
	
	public GardenDtl(GardenList garden, String plntbneNm, String plntzrNm, String distbNm, String fmlNm, String fmlCodeNm,
			String orgplceInfo, String adviseInfo, String imageEvlLinkCours, String growthHgInfo, String growthAraInfo,
			String lefStleInfo, String smellCode, String smellCodeNm, String toxctyInfo, String prpgtEraInfo,
			String etcEraInfo, String managelevelCode, String managelevelCodeNm, String grwtveCode, String grwtveCodeNm,
			String grwhTpCode, String grwhTpCodeNm, String winterLwetTpCode, String winterLwetTpCodeNm, String hdCode,
			String hdCodeNm, String frtlzrInfo, String soilInfo, String watercycleSprngCode,
			String watercycleSprngCodeNm, String watercycleSummerCode, String watercycleSummerCodeNm,
			String watercycleAutumnCode, String watercycleAutumnCodeNm, String watercycleWinterCode,
			String watercycleWinterCodeNm, String dlthtsManageInfo, String speclmanageInfo, String fncltyInfo,
			String flpodmtBigInfo, String flpodmtMddlInfo, String flpodmtSmallInfo, String managedemanddoCode,
			String managedemanddoCodeNm, String clCode, String clCodeNm, String grwhstleCode, String grwhstleCodeNm,
			String indoorpsncpacompositionCode, String indoorpsncpacompositionCodeNm, String eclgyCode,
			String eclgyCodeNm, String lefmrkCode, String lefmrkCodeNm, String lefcolrCode, String lefcolrCodeNm,
			String ignSeasonCode, String ignSeasonCodeNm, String flclrCode, String flclrCodeNm, String fmldeSeasonCode,
			String fmldeSeasonCodeNm, String fmldecolrCode, String fmldecolrCodeNm, String prpgtmthCode,
			String prpgtmthCodeNm, String lighttdemanddoCode, String lighttdemanddoCodeNm, String postngplaceCode,
			String postngplaceCodeNm, String dlthtsCode, String dlthtsCodeNm) {
		super(garden.cntntsNo, garden.cntntsSj, garden.rtnFileCours, garden.rtnFileSeCode, garden.rtnFileSn,
				garden.rtnFileUrl, garden.rtnImageDc, garden.rtnImgSeCode, garden.rtnOrginlFileNm, garden.rtnStreFileNm,
				garden.rtnThumbFileNm, garden.rtnThumbFileUrl);
		
		this.plntbneNm = plntbneNm;
		this.plntzrNm = plntzrNm;
		this.distbNm = distbNm;
		this.fmlNm = fmlNm;
		this.fmlCodeNm = fmlCodeNm;
		this.orgplceInfo = orgplceInfo;
		this.adviseInfo = adviseInfo;
		this.imageEvlLinkCours = imageEvlLinkCours;
		this.growthHgInfo = growthHgInfo;
		this.growthAraInfo = growthAraInfo;
		this.lefStleInfo = lefStleInfo;
		this.smellCode = smellCode;
		this.smellCodeNm = smellCodeNm;
		this.toxctyInfo = toxctyInfo;
		this.prpgtEraInfo = prpgtEraInfo;
		this.etcEraInfo = etcEraInfo;
		this.managelevelCode = managelevelCode;
		this.managelevelCodeNm = managelevelCodeNm;
		this.grwtveCode = grwtveCode;
		this.grwtveCodeNm = grwtveCodeNm;
		this.grwhTpCode = grwhTpCode;
		this.grwhTpCodeNm = grwhTpCodeNm;
		this.winterLwetTpCode = winterLwetTpCode;
		this.winterLwetTpCodeNm = winterLwetTpCodeNm;
		this.hdCode = hdCode;
		this.hdCodeNm = hdCodeNm;
		this.frtlzrInfo = frtlzrInfo;
		this.soilInfo = soilInfo;
		this.watercycleSprngCode = watercycleSprngCode;
		this.watercycleSprngCodeNm = watercycleSprngCodeNm;
		this.watercycleSummerCode = watercycleSummerCode;
		this.watercycleSummerCodeNm = watercycleSummerCodeNm;
		this.watercycleAutumnCode = watercycleAutumnCode;
		this.watercycleAutumnCodeNm = watercycleAutumnCodeNm;
		this.watercycleWinterCode = watercycleWinterCode;
		this.watercycleWinterCodeNm = watercycleWinterCodeNm;
		this.dlthtsManageInfo = dlthtsManageInfo;
		this.speclmanageInfo = speclmanageInfo;
		this.fncltyInfo = fncltyInfo;
		this.flpodmtBigInfo = flpodmtBigInfo;
		this.flpodmtMddlInfo = flpodmtMddlInfo;
		this.flpodmtSmallInfo = flpodmtSmallInfo;
		this.managedemanddoCode = managedemanddoCode;
		this.managedemanddoCodeNm = managedemanddoCodeNm;
		this.clCode = clCode;
		this.clCodeNm = clCodeNm;
		this.grwhstleCode = grwhstleCode;
		this.grwhstleCodeNm = grwhstleCodeNm;
		this.indoorpsncpacompositionCode = indoorpsncpacompositionCode;
		this.indoorpsncpacompositionCodeNm = indoorpsncpacompositionCodeNm;
		this.eclgyCode = eclgyCode;
		this.eclgyCodeNm = eclgyCodeNm;
		this.lefmrkCode = lefmrkCode;
		this.lefmrkCodeNm = lefmrkCodeNm;
		this.lefcolrCode = lefcolrCode;
		this.lefcolrCodeNm = lefcolrCodeNm;
		this.ignSeasonCode = ignSeasonCode;
		this.ignSeasonCodeNm = ignSeasonCodeNm;
		this.flclrCode = flclrCode;
		this.flclrCodeNm = flclrCodeNm;
		this.fmldeSeasonCode = fmldeSeasonCode;
		this.fmldeSeasonCodeNm = fmldeSeasonCodeNm;
		this.fmldecolrCode = fmldecolrCode;
		this.fmldecolrCodeNm = fmldecolrCodeNm;
		this.prpgtmthCode = prpgtmthCode;
		this.prpgtmthCodeNm = prpgtmthCodeNm;
		this.lighttdemanddoCode = lighttdemanddoCode;
		this.lighttdemanddoCodeNm = lighttdemanddoCodeNm;
		this.postngplaceCode = postngplaceCode;
		this.postngplaceCodeNm = postngplaceCodeNm;
		this.dlthtsCode = dlthtsCode;
		this.dlthtsCodeNm = dlthtsCodeNm;
	}
	@Override
	public String toString() {
		return "GardenDtl [plntbneNm=" + plntbneNm + ", plntzrNm=" + plntzrNm + ", distbNm=" + distbNm + ", fmlNm="
				+ fmlNm + ", fmlCodeNm=" + fmlCodeNm + ", orgplceInfo=" + orgplceInfo + ", adviseInfo=" + adviseInfo
				+ ", imageEvlLinkCours=" + imageEvlLinkCours + ", growthHgInfo=" + growthHgInfo + ", growthAraInfo="
				+ growthAraInfo + ", lefStleInfo=" + lefStleInfo + ", smellCode=" + smellCode + ", smellCodeNm="
				+ smellCodeNm + ", toxctyInfo=" + toxctyInfo + ", prpgtEraInfo=" + prpgtEraInfo + ", etcEraInfo="
				+ etcEraInfo + ", managelevelCode=" + managelevelCode + ", managelevelCodeNm=" + managelevelCodeNm
				+ ", grwtveCode=" + grwtveCode + ", grwtveCodeNm=" + grwtveCodeNm + ", grwhTpCode=" + grwhTpCode
				+ ", grwhTpCodeNm=" + grwhTpCodeNm + ", winterLwetTpCode=" + winterLwetTpCode + ", winterLwetTpCodeNm="
				+ winterLwetTpCodeNm + ", hdCode=" + hdCode + ", hdCodeNm=" + hdCodeNm + ", frtlzrInfo=" + frtlzrInfo
				+ ", soilInfo=" + soilInfo + ", watercycleSprngCode=" + watercycleSprngCode + ", watercycleSprngCodeNm="
				+ watercycleSprngCodeNm + ", watercycleSummerCode=" + watercycleSummerCode + ", watercycleSummerCodeNm="
				+ watercycleSummerCodeNm + ", watercycleAutumnCode=" + watercycleAutumnCode
				+ ", watercycleAutumnCodeNm=" + watercycleAutumnCodeNm + ", watercycleWinterCode="
				+ watercycleWinterCode + ", watercycleWinterCodeNm=" + watercycleWinterCodeNm + ", dlthtsManageInfo="
				+ dlthtsManageInfo + ", speclmanageInfo=" + speclmanageInfo + ", fncltyInfo=" + fncltyInfo
				+ ", flpodmtBigInfo=" + flpodmtBigInfo + ", flpodmtMddlInfo=" + flpodmtMddlInfo + ", flpodmtSmallInfo="
				+ flpodmtSmallInfo + ", managedemanddoCode=" + managedemanddoCode
				+ ", managedemanddoCodeNm=" + managedemanddoCodeNm + ", clCode=" + clCode + ", clCodeNm=" + clCodeNm
				+ ", grwhstleCode=" + grwhstleCode + ", grwhstleCodeNm=" + grwhstleCodeNm
				+ ", indoorpsncpacompositionCode=" + indoorpsncpacompositionCode + ", indoorpsncpacompositionCodeNm="
				+ indoorpsncpacompositionCodeNm + ", eclgyCode=" + eclgyCode + ", eclgyCodeNm=" + eclgyCodeNm
				+ ", lefmrkCode=" + lefmrkCode + ", lefmrkCodeNm=" + lefmrkCodeNm + ", lefcolrCode=" + lefcolrCode
				+ ", lefcolrCodeNm=" + lefcolrCodeNm + ", ignSeasonCode=" + ignSeasonCode + ", ignSeasonCodeNm="
				+ ignSeasonCodeNm + ", flclrCode=" + flclrCode + ", flclrCodeNm=" + flclrCodeNm + ", fmldeSeasonCode="
				+ fmldeSeasonCode + ", fmldeSeasonCodeNm=" + fmldeSeasonCodeNm + ", fmldecolrCode=" + fmldecolrCode
				+ ", fmldecolrCodeNm=" + fmldecolrCodeNm + ", prpgtmthCode=" + prpgtmthCode + ", prpgtmthCodeNm="
				+ prpgtmthCodeNm + ", lighttdemanddoCode=" + lighttdemanddoCode + ", lighttdemanddoCodeNm="
				+ lighttdemanddoCodeNm + ", postngplaceCode=" + postngplaceCode + ", postngplaceCodeNm="
				+ postngplaceCodeNm + ", dlthtsCode=" + dlthtsCode + ", dlthtsCodeNm=" + dlthtsCodeNm + "]";
	}
	public String getPlntbneNm() {
		return plntbneNm;
	}
	public void setPlntbneNm(String plntbneNm) {
		this.plntbneNm = plntbneNm;
	}
	public String getPlntzrNm() {
		return plntzrNm;
	}
	public void setPlntzrNm(String plntzrNm) {
		this.plntzrNm = plntzrNm;
	}
	public String getDistbNm() {
		return distbNm;
	}
	public void setDistbNm(String distbNm) {
		this.distbNm = distbNm;
	}
	public String getFmlNm() {
		return fmlNm;
	}
	public void setFmlNm(String fmlNm) {
		this.fmlNm = fmlNm;
	}
	public String getFmlCodeNm() {
		return fmlCodeNm;
	}
	public void setFmlCodeNm(String fmlCodeNm) {
		this.fmlCodeNm = fmlCodeNm;
	}
	public String getOrgplceInfo() {
		return orgplceInfo;
	}
	public void setOrgplceInfo(String orgplceInfo) {
		this.orgplceInfo = orgplceInfo;
	}
	public String getAdviseInfo() {
		return adviseInfo;
	}
	public void setAdviseInfo(String adviseInfo) {
		this.adviseInfo = adviseInfo;
	}
	public String getImageEvlLinkCours() {
		return imageEvlLinkCours;
	}
	public void setImageEvlLinkCours(String imageEvlLinkCours) {
		this.imageEvlLinkCours = imageEvlLinkCours;
	}
	public String getGrowthHgInfo() {
		return growthHgInfo;
	}
	public void setGrowthHgInfo(String growthHgInfo) {
		this.growthHgInfo = growthHgInfo;
	}
	public String getGrowthAraInfo() {
		return growthAraInfo;
	}
	public void setGrowthAraInfo(String growthAraInfo) {
		this.growthAraInfo = growthAraInfo;
	}
	public String getLefStleInfo() {
		return lefStleInfo;
	}
	public void setLefStleInfo(String lefStleInfo) {
		this.lefStleInfo = lefStleInfo;
	}
	public String getSmellCode() {
		return smellCode;
	}
	public void setSmellCode(String smellCode) {
		this.smellCode = smellCode;
	}
	public String getSmellCodeNm() {
		return smellCodeNm;
	}
	public void setSmellCodeNm(String smellCodeNm) {
		this.smellCodeNm = smellCodeNm;
	}
	public String getToxctyInfo() {
		return toxctyInfo;
	}
	public void setToxctyInfo(String toxctyInfo) {
		this.toxctyInfo = toxctyInfo;
	}
	public String getPrpgtEraInfo() {
		return prpgtEraInfo;
	}
	public void setPrpgtEraInfo(String prpgtEraInfo) {
		this.prpgtEraInfo = prpgtEraInfo;
	}
	public String getEtcEraInfo() {
		return etcEraInfo;
	}
	public void setEtcEraInfo(String etcEraInfo) {
		this.etcEraInfo = etcEraInfo;
	}
	public String getManagelevelCode() {
		return managelevelCode;
	}
	public void setManagelevelCode(String managelevelCode) {
		this.managelevelCode = managelevelCode;
	}
	public String getManagelevelCodeNm() {
		return managelevelCodeNm;
	}
	public void setManagelevelCodeNm(String managelevelCodeNm) {
		this.managelevelCodeNm = managelevelCodeNm;
	}
	public String getGrwtveCode() {
		return grwtveCode;
	}
	public void setGrwtveCode(String grwtveCode) {
		this.grwtveCode = grwtveCode;
	}
	public String getGrwtveCodeNm() {
		return grwtveCodeNm;
	}
	public void setGrwtveCodeNm(String grwtveCodeNm) {
		this.grwtveCodeNm = grwtveCodeNm;
	}
	public String getGrwhTpCode() {
		return grwhTpCode;
	}
	public void setGrwhTpCode(String grwhTpCode) {
		this.grwhTpCode = grwhTpCode;
	}
	public String getGrwhTpCodeNm() {
		return grwhTpCodeNm;
	}
	public void setGrwhTpCodeNm(String grwhTpCodeNm) {
		this.grwhTpCodeNm = grwhTpCodeNm;
	}
	public String getWinterLwetTpCode() {
		return winterLwetTpCode;
	}
	public void setWinterLwetTpCode(String winterLwetTpCode) {
		this.winterLwetTpCode = winterLwetTpCode;
	}
	public String getWinterLwetTpCodeNm() {
		return winterLwetTpCodeNm;
	}
	public void setWinterLwetTpCodeNm(String winterLwetTpCodeNm) {
		this.winterLwetTpCodeNm = winterLwetTpCodeNm;
	}
	public String getHdCode() {
		return hdCode;
	}
	public void setHdCode(String hdCode) {
		this.hdCode = hdCode;
	}
	public String getHdCodeNm() {
		return hdCodeNm;
	}
	public void setHdCodeNm(String hdCodeNm) {
		this.hdCodeNm = hdCodeNm;
	}
	public String getFrtlzrInfo() {
		return frtlzrInfo;
	}
	public void setFrtlzrInfo(String frtlzrInfo) {
		this.frtlzrInfo = frtlzrInfo;
	}
	public String getSoilInfo() {
		return soilInfo;
	}
	public void setSoilInfo(String soilInfo) {
		this.soilInfo = soilInfo;
	}
	public String getWatercycleSprngCode() {
		return watercycleSprngCode;
	}
	public void setWatercycleSprngCode(String watercycleSprngCode) {
		this.watercycleSprngCode = watercycleSprngCode;
	}
	public String getWatercycleSprngCodeNm() {
		return watercycleSprngCodeNm;
	}
	public void setWatercycleSprngCodeNm(String watercycleSprngCodeNm) {
		this.watercycleSprngCodeNm = watercycleSprngCodeNm;
	}
	public String getWatercycleSummerCode() {
		return watercycleSummerCode;
	}
	public void setWatercycleSummerCode(String watercycleSummerCode) {
		this.watercycleSummerCode = watercycleSummerCode;
	}
	public String getWatercycleSummerCodeNm() {
		return watercycleSummerCodeNm;
	}
	public void setWatercycleSummerCodeNm(String watercycleSummerCodeNm) {
		this.watercycleSummerCodeNm = watercycleSummerCodeNm;
	}
	public String getWatercycleAutumnCode() {
		return watercycleAutumnCode;
	}
	public void setWatercycleAutumnCode(String watercycleAutumnCode) {
		this.watercycleAutumnCode = watercycleAutumnCode;
	}
	public String getWatercycleAutumnCodeNm() {
		return watercycleAutumnCodeNm;
	}
	public void setWatercycleAutumnCodeNm(String watercycleAutumnCodeNm) {
		this.watercycleAutumnCodeNm = watercycleAutumnCodeNm;
	}
	public String getWatercycleWinterCode() {
		return watercycleWinterCode;
	}
	public void setWatercycleWinterCode(String watercycleWinterCode) {
		this.watercycleWinterCode = watercycleWinterCode;
	}
	public String getWatercycleWinterCodeNm() {
		return watercycleWinterCodeNm;
	}
	public void setWatercycleWinterCodeNm(String watercycleWinterCodeNm) {
		this.watercycleWinterCodeNm = watercycleWinterCodeNm;
	}
	public String getDlthtsManageInfo() {
		return dlthtsManageInfo;
	}
	public void setDlthtsManageInfo(String dlthtsManageInfo) {
		this.dlthtsManageInfo = dlthtsManageInfo;
	}
	public String getSpeclmanageInfo() {
		return speclmanageInfo;
	}
	public void setSpeclmanageInfo(String speclmanageInfo) {
		this.speclmanageInfo = speclmanageInfo;
	}
	public String getFncltyInfo() {
		return fncltyInfo;
	}
	public void setFncltyInfo(String fncltyInfo) {
		this.fncltyInfo = fncltyInfo;
	}
	public String getFlpodmtBigInfo() {
		return flpodmtBigInfo;
	}
	public void setFlpodmtBigInfo(String flpodmtBigInfo) {
		this.flpodmtBigInfo = flpodmtBigInfo;
	}
	public String getFlpodmtMddlInfo() {
		return flpodmtMddlInfo;
	}
	public void setFlpodmtMddlInfo(String flpodmtMddlInfo) {
		this.flpodmtMddlInfo = flpodmtMddlInfo;
	}
	public String getFlpodmtSmallInfo() {
		return flpodmtSmallInfo;
	}
	public void setFlpodmtSmallInfo(String flpodmtSmallInfo) {
		this.flpodmtSmallInfo = flpodmtSmallInfo;
	}
	public String getManagedemanddoCode() {
		return managedemanddoCode;
	}
	public void setManagedemanddoCode(String managedemanddoCode) {
		this.managedemanddoCode = managedemanddoCode;
	}
	public String getManagedemanddoCodeNm() {
		return managedemanddoCodeNm;
	}
	public void setManagedemanddoCodeNm(String managedemanddoCodeNm) {
		this.managedemanddoCodeNm = managedemanddoCodeNm;
	}
	public String getClCode() {
		return clCode;
	}
	public void setClCode(String clCode) {
		this.clCode = clCode;
	}
	public String getClCodeNm() {
		return clCodeNm;
	}
	public void setClCodeNm(String clCodeNm) {
		this.clCodeNm = clCodeNm;
	}
	public String getGrwhstleCode() {
		return grwhstleCode;
	}
	public void setGrwhstleCode(String grwhstleCode) {
		this.grwhstleCode = grwhstleCode;
	}
	public String getGrwhstleCodeNm() {
		return grwhstleCodeNm;
	}
	public void setGrwhstleCodeNm(String grwhstleCodeNm) {
		this.grwhstleCodeNm = grwhstleCodeNm;
	}
	public String getIndoorpsncpacompositionCode() {
		return indoorpsncpacompositionCode;
	}
	public void setIndoorpsncpacompositionCode(String indoorpsncpacompositionCode) {
		this.indoorpsncpacompositionCode = indoorpsncpacompositionCode;
	}
	public String getIndoorpsncpacompositionCodeNm() {
		return indoorpsncpacompositionCodeNm;
	}
	public void setIndoorpsncpacompositionCodeNm(String indoorpsncpacompositionCodeNm) {
		this.indoorpsncpacompositionCodeNm = indoorpsncpacompositionCodeNm;
	}
	public String getEclgyCode() {
		return eclgyCode;
	}
	public void setEclgyCode(String eclgyCode) {
		this.eclgyCode = eclgyCode;
	}
	public String getEclgyCodeNm() {
		return eclgyCodeNm;
	}
	public void setEclgyCodeNm(String eclgyCodeNm) {
		this.eclgyCodeNm = eclgyCodeNm;
	}
	public String getLefmrkCode() {
		return lefmrkCode;
	}
	public void setLefmrkCode(String lefmrkCode) {
		this.lefmrkCode = lefmrkCode;
	}
	public String getLefmrkCodeNm() {
		return lefmrkCodeNm;
	}
	public void setLefmrkCodeNm(String lefmrkCodeNm) {
		this.lefmrkCodeNm = lefmrkCodeNm;
	}
	public String getLefcolrCode() {
		return lefcolrCode;
	}
	public void setLefcolrCode(String lefcolrCode) {
		this.lefcolrCode = lefcolrCode;
	}
	public String getLefcolrCodeNm() {
		return lefcolrCodeNm;
	}
	public void setLefcolrCodeNm(String lefcolrCodeNm) {
		this.lefcolrCodeNm = lefcolrCodeNm;
	}
	public String getIgnSeasonCode() {
		return ignSeasonCode;
	}
	public void setIgnSeasonCode(String ignSeasonCode) {
		this.ignSeasonCode = ignSeasonCode;
	}
	public String getIgnSeasonCodeNm() {
		return ignSeasonCodeNm;
	}
	public void setIgnSeasonCodeNm(String ignSeasonCodeNm) {
		this.ignSeasonCodeNm = ignSeasonCodeNm;
	}
	public String getFlclrCode() {
		return flclrCode;
	}
	public void setFlclrCode(String flclrCode) {
		this.flclrCode = flclrCode;
	}
	public String getFlclrCodeNm() {
		return flclrCodeNm;
	}
	public void setFlclrCodeNm(String flclrCodeNm) {
		this.flclrCodeNm = flclrCodeNm;
	}
	public String getFmldeSeasonCode() {
		return fmldeSeasonCode;
	}
	public void setFmldeSeasonCode(String fmldeSeasonCode) {
		this.fmldeSeasonCode = fmldeSeasonCode;
	}
	public String getFmldeSeasonCodeNm() {
		return fmldeSeasonCodeNm;
	}
	public void setFmldeSeasonCodeNm(String fmldeSeasonCodeNm) {
		this.fmldeSeasonCodeNm = fmldeSeasonCodeNm;
	}
	public String getFmldecolrCode() {
		return fmldecolrCode;
	}
	public void setFmldecolrCode(String fmldecolrCode) {
		this.fmldecolrCode = fmldecolrCode;
	}
	public String getFmldecolrCodeNm() {
		return fmldecolrCodeNm;
	}
	public void setFmldecolrCodeNm(String fmldecolrCodeNm) {
		this.fmldecolrCodeNm = fmldecolrCodeNm;
	}
	public String getPrpgtmthCode() {
		return prpgtmthCode;
	}
	public void setPrpgtmthCode(String prpgtmthCode) {
		this.prpgtmthCode = prpgtmthCode;
	}
	public String getPrpgtmthCodeNm() {
		return prpgtmthCodeNm;
	}
	public void setPrpgtmthCodeNm(String prpgtmthCodeNm) {
		this.prpgtmthCodeNm = prpgtmthCodeNm;
	}
	public String getLighttdemanddoCode() {
		return lighttdemanddoCode;
	}
	public void setLighttdemanddoCode(String lighttdemanddoCode) {
		this.lighttdemanddoCode = lighttdemanddoCode;
	}
	public String getLighttdemanddoCodeNm() {
		return lighttdemanddoCodeNm;
	}
	public void setLighttdemanddoCodeNm(String lighttdemanddoCodeNm) {
		this.lighttdemanddoCodeNm = lighttdemanddoCodeNm;
	}
	public String getPostngplaceCode() {
		return postngplaceCode;
	}
	public void setPostngplaceCode(String postngplaceCode) {
		this.postngplaceCode = postngplaceCode;
	}
	public String getPostngplaceCodeNm() {
		return postngplaceCodeNm;
	}
	public void setPostngplaceCodeNm(String postngplaceCodeNm) {
		this.postngplaceCodeNm = postngplaceCodeNm;
	}
	public String getDlthtsCode() {
		return dlthtsCode;
	}
	public void setDlthtsCode(String dlthtsCode) {
		this.dlthtsCode = dlthtsCode;
	}
	public String getDlthtsCodeNm() {
		return dlthtsCodeNm;
	}
	public void setDlthtsCodeNm(String dlthtsCodeNm) {
		this.dlthtsCodeNm = dlthtsCodeNm;
	}
	 
	
//	추가한코드
	
	public String getManageleveltext() {
	      return manageleveltext;
	    }

	 public void setManageleveltext(String manageleveltext) {
	    this.manageleveltext = manageleveltext;
	    }
	 
	public String getGrowthrate() {
		 return growthrate;
		}

	public void setGrowthrate(String growthrate) {
		this.growthrate = growthrate;
		}
	public String getHumidity() {
		 return humidity;
		}

	public void setHumidity(String humidity) {
		this.humidity = humidity;
		}
	
	public String getGrowthTemperature() {
		 return growthTemperature;
		}

	public void setGrowthTemperature(String growthTemperature) {
		this.growthTemperature = growthTemperature;
		}
	
	public String getLeafShape() {
		 return leafShape;
		}

	public void setLeafShape(String leafShape) {
		this.leafShape = leafShape;
		}
	
	public String getOrgplce() {
		 return orgplce;
		}

	public void setOrgplce(String orgplce) {
		this.orgplce = orgplce;
		}
	
	public String getSmellCodeName() {
		 return smellCodeName;
		}

	public void setSmellCodeName(String smellCodeName) {
		this.smellCodeName = smellCodeName;
		}
	
	public String getToxin() {
		 return toxin;
		}

	public void setToxin(String toxin) {
		this.toxin = toxin;
		}
	
	public String getPrpgtEra() {
		 return prpgtEra;
		}

	public void setPrpgtEra(String prpgtEra) {
		this.prpgtEra = prpgtEra;
		}
	
	public String getEtcEra() {
		 return etcEra;
		}

	public void setEtcEra(String etcEra) {
		this.etcEra = etcEra;
		}
	
	public String getFrtlzr() {
		 return frtlzr;
		}

	public void setFrtlzr(String frtlzr) {
		this.frtlzr = frtlzr;
		}
	
	public String getDlthtsManage() {
		 return dlthtsManage;
		}

	public void setDlthtsManage(String dlthtsManage) {
		this.dlthtsManage = dlthtsManage;
		}
	
	public String getWatercycleSprng() {
		 return watercycleSprng;
		}

	public void setWatercycleSprng(String watercycleSprng) {
		this.watercycleSprng = watercycleSprng;
		}
	
	public String getWatercycleSummer() {
		 return watercycleSummer;
		}

	public void setWatercycleSummer(String watercycleSummer) {
		this.watercycleSummer = watercycleSummer;
		}
	
	public String getWatercycleAutumn() {
		 return watercycleAutumn;
		}

	public void setWatercycleAutumn(String watercycleAutumn) {
		this.watercycleAutumn = watercycleAutumn;
		}
	
	public String getWatercycleWinter() {
		 return watercycleWinter;
		}

	public void setWatercycleWinter(String watercycleWinter) {
		this.watercycleWinter = watercycleWinter;
		}
	
	public String getImageA() {
		 return imageA;
		}

	public void setImageA(String imageA) {
		this.imageA = imageA;
		}



}
