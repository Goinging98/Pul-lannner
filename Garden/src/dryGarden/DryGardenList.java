package dryGarden;

public class DryGardenList {
	public int cntntsNo;
	public String cntntsSj;
	public String clNm;
	public String scnm;
	public String thumbImgUrl1;
	public String imgUrl1;
	public String thumbImgUrl2;
	public String imgUrl2;
	
	public DryGardenList() {
		super();
	}
	
	public DryGardenList(int cntntsNo, String cntntsSj, String clNm, String scnm, String thumbImgUrl1,
			String imgUrl1, String thumbImgUrl2, String imgUrl2) {
		super();
		this.cntntsNo = cntntsNo;
		this.cntntsSj = cntntsSj;
		this.clNm = clNm;
		this.scnm = scnm;
		this.thumbImgUrl1 = thumbImgUrl1;
		this.imgUrl1 = imgUrl1;
		this.thumbImgUrl2 = thumbImgUrl2;
		this.imgUrl2 = imgUrl2;

	}

	@Override
	public String toString() {
		return "DryGardenList [cntntsNo=" + cntntsNo + ", cntntsSj=" + cntntsSj + ", clNm=" + clNm + ", scnm=" + scnm
				+ ", thumbImgUrl1=" + thumbImgUrl1 + ", imgUrl1=" + imgUrl1 + ", thumbImgUrl2=" + thumbImgUrl2
				+ ", imgUrl2=" + imgUrl2 + "]";
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

	public String getClNm() {
		return clNm;
	}

	public void setClNm(String clNm) {
		this.clNm = clNm;
	}

	public String getScnm() {
		return scnm;
	}

	public void setScnm(String scnm) {
		this.scnm = scnm;
	}

	public String getThumbImgUrl1() {
		return thumbImgUrl1;
	}

	public void setThumbImgUrl1(String thumbImgUrl1) {
		this.thumbImgUrl1 = thumbImgUrl1;
	}

	public String getImgUrl1() {
		return imgUrl1;
	}

	public void setImgUrl1(String imgUrl1) {
		this.imgUrl1 = imgUrl1;
	}

	public String getThumbImgUrl2() {
		return thumbImgUrl2;
	}

	public void setThumbImgUrl2(String thumbImgUrl2) {
		this.thumbImgUrl2 = thumbImgUrl2;
	}

	public String getImgUrl2() {
		return imgUrl2;
	}

	public void setImgUrl2(String imgUrl2) {
		this.imgUrl2 = imgUrl2;
	}
	
	


	
	
	
	
	

}
