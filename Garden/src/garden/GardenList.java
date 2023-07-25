package garden;

public class GardenList {
	public int cntntsNo;
	public String cntntsSj;
	public String rtnFileSeCode;
	public String rtnFileSn;
	public String rtnOrginlFileNm;
	public String rtnStreFileNm;
	public String rtnFileCours;
	public String rtnImageDc;
	public String rtnThumbFileNm;
	public String rtnImgSeCode;
	public String rtnFileUrl;
	public String rtnThumbFileUrl;
	
	public GardenList() {
		super();
	}
	
	public GardenList(int cntntsNo, String cntntsSj, String rtnFileSeCode, String rtnFileSn, String rtnOrginlFileNm,
			String rtnStreFileNm, String rtnFileCours, String rtnImageDc, String rtnThumbFileNm, String rtnImgSeCode,
			String rtnFileUrl, String rtnThumbFileUrl) {
		super();
		this.cntntsNo = cntntsNo;
		this.cntntsSj = cntntsSj;
		this.rtnFileSeCode = rtnFileSeCode;
		this.rtnFileSn = rtnFileSn;
		this.rtnOrginlFileNm = rtnOrginlFileNm;
		this.rtnStreFileNm = rtnStreFileNm;
		this.rtnFileCours = rtnFileCours;
		this.rtnImageDc = rtnImageDc;
		this.rtnThumbFileNm = rtnThumbFileNm;
		this.rtnImgSeCode = rtnImgSeCode;
		this.rtnFileUrl = rtnFileUrl;
		this.rtnThumbFileUrl = rtnThumbFileUrl;
	}
	
	@Override
	public String toString() {
		return "GardenList [cntntsNo=" + cntntsNo + ", cntntsSj=" + cntntsSj + ", rtnFileSeCode=" + rtnFileSeCode
				+ ", rtnFileSn=" + rtnFileSn + ", rtnOrginlFileNm=" + rtnOrginlFileNm + ", rtnStreFileNm="
				+ rtnStreFileNm + ", rtnFileCours=" + rtnFileCours + ", rtnImageDc=" + rtnImageDc + ", rtnThumbFileNm="
				+ rtnThumbFileNm + ", rtnImgSeCode=" + rtnImgSeCode + ", rtnFileUrl=" + rtnFileUrl
				+ ", rtnThumbFileUrl=" + rtnThumbFileUrl + "]";
	}
	
	public int getCntntsNo() {
		return cntntsNo;
	}
	public void setCntntsNo(int cntntsNo) {
		this.cntntsNo = cntntsNo;
	}
	public String getCntntsSj() {
		return cntntsSj;
	}
	public void setCntntsSj(String cntntsSj) {
		this.cntntsSj = cntntsSj;
	}
	public String getRtnFileSeCode() {
		return rtnFileSeCode;
	}
	public void setRtnFileSeCode(String rtnFileSeCode) {
		this.rtnFileSeCode = rtnFileSeCode;
	}
	public String getRtnFileSn() {
		return rtnFileSn;
	}
	public void setRtnFileSn(String rtnFileSn) {
		this.rtnFileSn = rtnFileSn;
	}
	public String getRtnOrginlFileNm() {
		return rtnOrginlFileNm;
	}
	public void setRtnOrginlFileNm(String rtnOrginlFileNm) {
		this.rtnOrginlFileNm = rtnOrginlFileNm;
	}
	public String getRtnStreFileNm() {
		return rtnStreFileNm;
	}
	public void setRtnStreFileNm(String rtnStreFileNm) {
		this.rtnStreFileNm = rtnStreFileNm;
	}
	public String getRtnFileCours() {
		return rtnFileCours;
	}
	public void setRtnFileCours(String rtnFileCours) {
		this.rtnFileCours = rtnFileCours;
	}
	public String getRtnImageDc() {
		return rtnImageDc;
	}
	public void setRtnImageDc(String rtnImageDc) {
		this.rtnImageDc = rtnImageDc;
	}
	public String getRtnThumbFileNm() {
		return rtnThumbFileNm;
	}
	public void setRtnThumbFileNm(String rtnThumbFileNm) {
		this.rtnThumbFileNm = rtnThumbFileNm;
	}
	public String getRtnImgSeCode() {
		return rtnImgSeCode;
	}
	public void setRtnImgSeCode(String rtnImgSeCode) {
		this.rtnImgSeCode = rtnImgSeCode;
	}
	public String getRtnFileUrl() {
		return rtnFileUrl;
	}
	public void setRtnFileUrl(String rtnFileUrl) {
		this.rtnFileUrl = rtnFileUrl;
	}
	public String getRtnThumbFileUrl() {
		return rtnThumbFileUrl;
	}
	public void setRtnThumbFileUrl(String rtnThumbFileUrl) {
		this.rtnThumbFileUrl = rtnThumbFileUrl;
	}
	
	
	

}
