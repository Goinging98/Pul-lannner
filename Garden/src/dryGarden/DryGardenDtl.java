package dryGarden;

public class DryGardenDtl extends DryGardenList{
	
	                                
	public String cntntsSj;
	public String clNm;
	public String clCodeDc;
	public String scnm;
	public String distbNm;
	public String orgplce;
	public String stleSeNm;
	public String flwrInfo;
	public String lfclChngeInfo;
	public String rdxStleNm;
	public String grwtInfo;
	public String grwtseVeNm;
	public String grwhTpInfo;
	public String pswntrTpInfo;
	public String chartrInfo;
	public String lighttInfo;
	public String waterCycleInfo;
	public String prpgtInfo;
	public String hgtmMhmrInfo;
	public String dlthtsInfo;
	public String manageLevelNm;
	public String manageDemandNm;
	public String frtlzrInfo;
	public String batchPlaceInfo;
	public String tipInfo;
	public String mainImgUrl1;
	public String mainImgUrl2;
	public String lightImgUrl1;
	public String lightImgUrl2;
	public String lightImgUrl3;
	
	public DryGardenDtl() {
		super();
	}
	public DryGardenDtl(int cntntsNo, String cntntsSj, String clNm, String scnm, String thumbImgUrl1,
			String imgUrl1, String thumbImgUrl2, String imgUrl2) {
		super(cntntsNo, cntntsSj, clNm, scnm, thumbImgUrl1, imgUrl1,  thumbImgUrl2,  imgUrl2);			 
	}
	
	public DryGardenDtl(DryGardenList drygarden,
			String cntntsSj,      
			String clNm,          
			String clCodeDc,      
			String scnm,          
			String distbNm,       
			String orgplce,       
			String stleSeNm,      
			String flwrInfo,      
			String lfclChngeInfo, 
			String rdxStleNm,     
			String grwtInfo,      
			String grwtseVeNm,    
			String grwhTpInfo,    
			String pswntrTpInfo,  
			String chartrInfo,    
			String lighttInfo,    
			String waterCycleInfo,
			String prpgtInfo,     
			String hgtmMhmrInfo,  
			String dlthtsInfo,    
			String manageLevelNm, 
			String manageDemandNm,
			String frtlzrInfo,    
			String batchPlaceInfo,
			String tipInfo,       
			String mainImgUrl1,   
			String mainImgUrl2,   
			String lightImgUrl1,  
			String lightImgUrl2,  
			String lightImgUrl3) {
			
		super(drygarden.cntntsNo, drygarden.cntntsSj, drygarden.clNm, drygarden.scnm, drygarden.thumbImgUrl1, drygarden.imgUrl1,  drygarden.thumbImgUrl2,  drygarden.imgUrl2);
		
		this.cntntsSj = cntntsSj;
		this.clNm = clNm;
		this.clCodeDc = clCodeDc;
		this.scnm = scnm;
		this.distbNm = distbNm;
		this.orgplce = orgplce;
		this.stleSeNm = stleSeNm;
		this.flwrInfo = flwrInfo;
		this.lfclChngeInfo = lfclChngeInfo;
		this.rdxStleNm = rdxStleNm;
		this.grwtInfo = grwtInfo;
		this.grwtseVeNm = grwtseVeNm;
		this.grwhTpInfo = grwhTpInfo;
		this.pswntrTpInfo = pswntrTpInfo;
		this.chartrInfo = chartrInfo;
		this.lighttInfo = lighttInfo;
		this.waterCycleInfo = waterCycleInfo;
		this.prpgtInfo = prpgtInfo;
		this.hgtmMhmrInfo = hgtmMhmrInfo;
		this.dlthtsInfo = dlthtsInfo;
		this.manageLevelNm = manageLevelNm;
		this.manageDemandNm = manageDemandNm;
		this.frtlzrInfo = frtlzrInfo;
		this.batchPlaceInfo = batchPlaceInfo;
		this.tipInfo = tipInfo;
		this.mainImgUrl1 = mainImgUrl1;
		this.mainImgUrl2 = mainImgUrl2;
		this.lightImgUrl1 = lightImgUrl1;
		this.lightImgUrl2 = lightImgUrl2;
		this.lightImgUrl3 = lightImgUrl3;
	}
	@Override
	public String toString() {
		return "DryGardenDtl [cntntsSj=" + cntntsSj + ", clNm=" + clNm + ", clCodeDc=" + clCodeDc + ", scnm=" + scnm
				+ ", distbNm=" + distbNm + ", orgplce=" + orgplce + ", stleSeNm=" + stleSeNm + ", flwrInfo=" + flwrInfo
				+ ", lfclChngeInfo=" + lfclChngeInfo + ", rdxStleNm=" + rdxStleNm + ", grwtInfo=" + grwtInfo
				+ ", grwtseVeNm=" + grwtseVeNm + ", grwhTpInfo=" + grwhTpInfo + ", pswntrTpInfo=" + pswntrTpInfo
				+ ", chartrInfo=" + chartrInfo + ", lighttInfo=" + lighttInfo + ", waterCycleInfo=" + waterCycleInfo
				+ ", prpgtInfo=" + prpgtInfo + ", hgtmMhmrInfo=" + hgtmMhmrInfo + ", dlthtsInfo=" + dlthtsInfo
				+ ", manageLevelNm=" + manageLevelNm + ", manageDemandNm=" + manageDemandNm + ", frtlzrInfo="
				+ frtlzrInfo + ", batchPlaceInfo=" + batchPlaceInfo + ", tipInfo=" + tipInfo + ", mainImgUrl1="
				+ mainImgUrl1 + ", mainImgUrl2=" + mainImgUrl2 + ", lightImgUrl1=" + lightImgUrl1 + ", lightImgUrl2="
				+ lightImgUrl2 + ", lightImgUrl3=" + lightImgUrl3 + "]";
	}
	public String getCntntsSj() {
		return cntntsSj;
	}
	public void setCntntsSj(String cntntsSj) {
		this.cntntsSj = cntntsSj;
	}
	public String getClNm() {
		return clNm;
	}
	public void setClNm(String clNm) {
		this.clNm = clNm;
	}
	public String getClCodeDc() {
		return clCodeDc;
	}
	public void setClCodeDc(String clCodeDc) {
		this.clCodeDc = clCodeDc;
	}
	public String getScnm() {
		return scnm;
	}
	public void setScnm(String scnm) {
		this.scnm = scnm;
	}
	public String getDistbNm() {
		return distbNm;
	}
	public void setDistbNm(String distbNm) {
		this.distbNm = distbNm;
	}
	public String getOrgplce() {
		return orgplce;
	}
	public void setOrgplce(String orgplce) {
		this.orgplce = orgplce;
	}
	public String getStleSeNm() {
		return stleSeNm;
	}
	public void setStleSeNm(String stleSeNm) {
		this.stleSeNm = stleSeNm;
	}
	public String getFlwrInfo() {
		return flwrInfo;
	}
	public void setFlwrInfo(String flwrInfo) {
		this.flwrInfo = flwrInfo;
	}
	public String getLfclChngeInfo() {
		return lfclChngeInfo;
	}
	public void setLfclChngeInfo(String lfclChngeInfo) {
		this.lfclChngeInfo = lfclChngeInfo;
	}
	public String getRdxStleNm() {
		return rdxStleNm;
	}
	public void setRdxStleNm(String rdxStleNm) {
		this.rdxStleNm = rdxStleNm;
	}
	public String getGrwtInfo() {
		return grwtInfo;
	}
	public void setGrwtInfo(String grwtInfo) {
		this.grwtInfo = grwtInfo;
	}
	public String getGrwtseVeNm() {
		return grwtseVeNm;
	}
	public void setGrwtseVeNm(String grwtseVeNm) {
		this.grwtseVeNm = grwtseVeNm;
	}
	public String getGrwhTpInfo() {
		return grwhTpInfo;
	}
	public void setGrwhTpInfo(String grwhTpInfo) {
		this.grwhTpInfo = grwhTpInfo;
	}
	public String getPswntrTpInfo() {
		return pswntrTpInfo;
	}
	public void setPswntrTpInfo(String pswntrTpInfo) {
		this.pswntrTpInfo = pswntrTpInfo;
	}
	public String getChartrInfo() {
		return chartrInfo;
	}
	public void setChartrInfo(String chartrInfo) {
		this.chartrInfo = chartrInfo;
	}
	public String getLighttInfo() {
		return lighttInfo;
	}
	public void setLighttInfo(String lighttInfo) {
		this.lighttInfo = lighttInfo;
	}
	public String getWaterCycleInfo() {
		return waterCycleInfo;
	}
	public void setWaterCycleInfo(String waterCycleInfo) {
		this.waterCycleInfo = waterCycleInfo;
	}
	public String getPrpgtInfo() {
		return prpgtInfo;
	}
	public void setPrpgtInfo(String prpgtInfo) {
		this.prpgtInfo = prpgtInfo;
	}
	public String getHgtmMhmrInfo() {
		return hgtmMhmrInfo;
	}
	public void setHgtmMhmrInfo(String hgtmMhmrInfo) {
		this.hgtmMhmrInfo = hgtmMhmrInfo;
	}
	public String getDlthtsInfo() {
		return dlthtsInfo;
	}
	public void setDlthtsInfo(String dlthtsInfo) {
		this.dlthtsInfo = dlthtsInfo;
	}
	public String getManageLevelNm() {
		return manageLevelNm;
	}
	public void setManageLevelNm(String manageLevelNm) {
		this.manageLevelNm = manageLevelNm;
	}
	public String getManageDemandNm() {
		return manageDemandNm;
	}
	public void setManageDemandNm(String manageDemandNm) {
		this.manageDemandNm = manageDemandNm;
	}
	public String getFrtlzrInfo() {
		return frtlzrInfo;
	}
	public void setFrtlzrInfo(String frtlzrInfo) {
		this.frtlzrInfo = frtlzrInfo;
	}
	public String getBatchPlaceInfo() {
		return batchPlaceInfo;
	}
	public void setBatchPlaceInfo(String batchPlaceInfo) {
		this.batchPlaceInfo = batchPlaceInfo;
	}
	public String getTipInfo() {
		return tipInfo;
	}
	public void setTipInfo(String tipInfo) {
		this.tipInfo = tipInfo;
	}
	public String getMainImgUrl1() {
		return mainImgUrl1;
	}
	public void setMainImgUrl1(String mainImgUrl1) {
		this.mainImgUrl1 = mainImgUrl1;
	}
	public String getMainImgUrl2() {
		return mainImgUrl2;
	}
	public void setMainImgUrl2(String mainImgUrl2) {
		this.mainImgUrl2 = mainImgUrl2;
	}
	public String getLightImgUrl1() {
		return lightImgUrl1;
	}
	public void setLightImgUrl1(String lightImgUrl1) {
		this.lightImgUrl1 = lightImgUrl1;
	}
	public String getLightImgUrl2() {
		return lightImgUrl2;
	}
	public void setLightImgUrl2(String lightImgUrl2) {
		this.lightImgUrl2 = lightImgUrl2;
	}
	public String getLightImgUrl3() {
		return lightImgUrl3;
	}
	public void setLightImgUrl3(String lightImgUrl3) {
		this.lightImgUrl3 = lightImgUrl3;
	}
	
	
	
		
		
		
		
		
		
		
	
	
	
	
}
