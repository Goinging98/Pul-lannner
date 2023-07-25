package flower;

public class Flower {
	public String dataNo;
	public String fMonth;
	public String fDay;
	public String flowNm;
	public String flowLang;
	public String fileName1;
	public String fileName2;
	public String fileName3;
	public String imgUrl1;
	public String imgUrl2;
	public String imgUrl3;
	public String publishOrg;
	
	public Flower() {
		super();
	}

	public Flower(String dataNo, String fMonth, String fDay, String flowNm,
			String flowLang, String fileName1, String fileName2, String fileName3, String imgUrl1, String imgUrl2,
			String imgUrl3, String publishOrg) {
		super();
		this.dataNo = dataNo;
		this.fMonth = fMonth;
		this.fDay = fDay;
		this.flowNm = flowNm;
		this.flowLang = flowLang;
		this.fileName1 = fileName1;
		this.fileName2 = fileName2;
		this.fileName3 = fileName3;
		this.imgUrl1 = imgUrl1;
		this.imgUrl2 = imgUrl2;
		this.imgUrl3 = imgUrl3;
		this.publishOrg = publishOrg;
	}

	@Override
	public String toString() {
		return "Flower [dataNo=" + dataNo + ", fMonth=" + fMonth + ", fDay=" + fDay + ", flowNm=" + flowNm
				+ ", flowLang=" + flowLang + ", fileName1=" + fileName1 + ", fileName2=" + fileName2 + ", fileName3="
				+ fileName3 + ", imgUrl1=" + imgUrl1 + ", imgUrl2=" + imgUrl2 + ", imgUrl3=" + imgUrl3 + ", publishOrg="
				+ publishOrg + "]";
	}

	public String getDataNo() {
		return dataNo;
	}

	public void setDataNo(String dataNo) {
		this.dataNo = dataNo;
	}

	public String getfMonth() {
		return fMonth;
	}

	public void setfMonth(String fMonth) {
		this.fMonth = fMonth;
	}

	public String getfDay() {
		return fDay;
	}

	public void setfDay(String fDay) {
		this.fDay = fDay;
	}

	public String getFlowNm() {
		return flowNm;
	}

	public void setFlowNm(String flowNm) {
		this.flowNm = flowNm;
	}

	public String getFlowLang() {
		return flowLang;
	}

	public void setFlowLang(String flowLang) {
		this.flowLang = flowLang;
	}

	public String getFileName1() {
		return fileName1;
	}

	public void setFileName1(String fileName1) {
		this.fileName1 = fileName1;
	}

	public String getFileName2() {
		return fileName2;
	}

	public void setFileName2(String fileName2) {
		this.fileName2 = fileName2;
	}

	public String getFileName3() {
		return fileName3;
	}

	public void setFileName3(String fileName3) {
		this.fileName3 = fileName3;
	}

	public String getImgUrl1() {
		return imgUrl1;
	}

	public void setImgUrl1(String imgUrl1) {
		this.imgUrl1 = imgUrl1;
	}

	public String getImgUrl2() {
		return imgUrl2;
	}

	public void setImgUrl2(String imgUrl2) {
		this.imgUrl2 = imgUrl2;
	}

	public String getImgUrl3() {
		return imgUrl3;
	}

	public void setImgUrl3(String imgUrl3) {
		this.imgUrl3 = imgUrl3;
	}

	public String getPublishOrg() {
		return publishOrg;
	}

	public void setPublishOrg(String publishOrg) {
		this.publishOrg = publishOrg;
	}
	
	
	

}
