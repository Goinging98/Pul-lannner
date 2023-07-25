package com.multi.bbs.plant.model.vo;

public class FlowerDtl {
	public String dataNo;
	public String fMonth;
	public String fDay;
	public String flowNm;
	public String fSctNm;
	public String fEngNm;
	public String flowLang;
	public String fContent;
	public String fUse;
	public String fGrow;
	public String fType;
	public String fileName1;
	public String fileName2;
	public String fileName3;
	public String imgUrl1;
	public String imgUrl2;
	public String imgUrl3;
	
	public FlowerDtl() {
		super();
	}

	public FlowerDtl(String dataNo, String fMonth, String fDay, String flowNm, String fSctNm, String fEngNm,
			String flowLang, String fContent, String fUse, String fGrow, String fType, String fileName1,
			String fileName2, String fileName3, String imgUrl1, String imgUrl2, String imgUrl3) {
		super();
		this.dataNo = dataNo;
		this.fMonth = fMonth;
		this.fDay = fDay;
		this.flowNm = flowNm;
		this.fSctNm = fSctNm;
		this.fEngNm = fEngNm;
		this.flowLang = flowLang;
		this.fContent = fContent;
		this.fUse = fUse;
		this.fGrow = fGrow;
		this.fType = fType;
		this.fileName1 = fileName1;
		this.fileName2 = fileName2;
		this.fileName3 = fileName3;
		this.imgUrl1 = imgUrl1;
		this.imgUrl2 = imgUrl2;
		this.imgUrl3 = imgUrl3;
	}

	@Override
	public String toString() {
		return "FlowerDtl [dataNo=" + dataNo + ", fMonth=" + fMonth + ", fDay=" + fDay + ", flowNm=" + flowNm
				+ ", fSctNm=" + fSctNm + ", fEngNm=" + fEngNm + ", flowLang=" + flowLang + ", fContent=" + fContent
				+ ", fUse=" + fUse + ", fGrow=" + fGrow + ", fType=" + fType + ", fileName1=" + fileName1
				+ ", fileName2=" + fileName2 + ", fileName3=" + fileName3 + ", imgUrl1=" + imgUrl1 + ", imgUrl2="
				+ imgUrl2 + ", imgUrl3=" + imgUrl3 + "]";
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

	public String getfSctNm() {
		return fSctNm;
	}

	public void setfSctNm(String fSctNm) {
		this.fSctNm = fSctNm;
	}

	public String getfEngNm() {
		return fEngNm;
	}

	public void setfEngNm(String fEngNm) {
		this.fEngNm = fEngNm;
	}

	public String getFlowLang() {
		return flowLang;
	}

	public void setFlowLang(String flowLang) {
		this.flowLang = flowLang;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}

	public String getfUse() {
		return fUse;
	}

	public void setfUse(String fUse) {
		this.fUse = fUse;
	}

	public String getfGrow() {
		return fGrow;
	}

	public void setfGrow(String fGrow) {
		this.fGrow = fGrow;
	}

	public String getfType() {
		return fType;
	}

	public void setfType(String fType) {
		this.fType = fType;
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
	

}
