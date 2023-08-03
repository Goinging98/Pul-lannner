package com.multi.bbs.Arboretum.model.vo;

public class TourVO {public int 	  contentid;
public String contenttypeid;
public String homepage;
public String tel;
public String title;
public String firstimage;
public String firstimage2;
public String areacode;
public String sigungucode;
public String cat1;
public String cat2;
public String cat3;
public String addr1;
public String addr2;
public String zipcode;
public String mapx;
public String mapy;
public String overview;
public String mlevel;

//추가코드 
public String infocenter;
public String category;
public String restdate;

public TourVO() {
	super();
	// TODO Auto-generated constructor stub
}

public TourVO(int contentid, String contenttypeid, String homepage, String tel, String title, String firstimage,
		String firstimage2, String areacode, String sigungucode, String cat1, String cat2, String cat3,
		String addr1, String addr2, String zipcode, String mapx, String mapy, String overview, String mlevel) {
	super();
	this.contentid = contentid;
	this.contenttypeid = contenttypeid;
	this.homepage = homepage;
	this.tel = tel;
	this.title = title;
	this.firstimage = firstimage;
	this.firstimage2 = firstimage2;
	this.areacode = areacode;
	this.sigungucode = sigungucode;
	this.cat1 = cat1;
	this.cat2 = cat2;
	this.cat3 = cat3;
	this.addr1 = addr1;
	this.addr2 = addr2;
	this.zipcode = zipcode;
	this.mapx = mapx;
	this.mapy = mapy;
	this.overview = overview;
	this.mlevel = mlevel;
}

@Override
public String toString() {
	return "TourVO [contentid=" + contentid + ", contenttypeid=" + contenttypeid + ", homepage=" + homepage
			+ ", tel=" + tel + ", title=" + title + ", firstimage=" + firstimage + ", firstimage2=" + firstimage2
			+ ", areacode=" + areacode + ", sigungucode=" + sigungucode + ", cat1=" + cat1 + ", cat2=" + cat2
			+ ", cat3=" + cat3 + ", addr1=" + addr1 + ", addr2=" + addr2 + ", zipcode=" + zipcode + ", mapx=" + mapx
			+ ", mapy=" + mapy + ", overview=" + overview + ", mlevel=" + mlevel + "]";
}

public int getContentid() {
	return contentid;
}

public void setContentid(int contentid) {
	this.contentid = contentid;
}

public String getContenttypeid() {
	return contenttypeid;
}

public void setContenttypeid(String contenttypeid) {
	this.contenttypeid = contenttypeid;
}

public String getHomepage() {
	return homepage;
}

public void setHomepage(String homepage) {
	this.homepage = homepage;
}

public String getTel() {
	return tel;
}

public void setTel(String tel) {
	this.tel = tel;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getFirstimage() {
	return firstimage;
}

public void setFirstimage(String firstimage) {
	this.firstimage = firstimage;
}

public String getFirstimage2() {
	return firstimage2;
}

public void setFirstimage2(String firstimage2) {
	this.firstimage2 = firstimage2;
}

public String getAreacode() {
	return areacode;
}

public void setAreacode(String areacode) {
	this.areacode = areacode;
}

public String getSigungucode() {
	return sigungucode;
}

public void setSigungucode(String sigungucode) {
	this.sigungucode = sigungucode;
}

public String getCat1() {
	return cat1;
}

public void setCat1(String cat1) {
	this.cat1 = cat1;
}

public String getCat2() {
	return cat2;
}

public void setCat2(String cat2) {
	this.cat2 = cat2;
}

public String getCat3() {
	return cat3;
}

public void setCat3(String cat3) {
	this.cat3 = cat3;
}

public String getAddr1() {
	return addr1;
}

public void setAddr1(String addr1) {
	this.addr1 = addr1;
}

public String getAddr2() {
	return addr2;
}

public void setAddr2(String addr2) {
	this.addr2 = addr2;
}

public String getZipcode() {
	return zipcode;
}

public void setZipcode(String zipcode) {
	this.zipcode = zipcode;
}

public String getMapx() {
	return mapx;
}

public void setMapx(String mapx) {
	this.mapx = mapx;
}

public String getMapy() {
	return mapy;
}

public void setMapy(String mapy) {
	this.mapy = mapy;
}

public String getOverview() {
    return (overview == null || overview.isEmpty()) ? "정보없음" : overview;
}

public void setOverview(String overview) {
	this.overview = overview;
}

public String getMlevel() {
	return mlevel;
}

public void setMlevel(String mlevel) {
	this.mlevel = mlevel;
}


//추가코드
public String getInfocenter() {
	return infocenter;
}

public void setInfocenter(String infocenter) {
	this.infocenter = infocenter;
}

public String getRestdate() {
	return (restdate == null || restdate.isEmpty()) ? "정보없음" : restdate;
}

public void setRestdate(String restdate) {
	this.restdate = restdate;
}

}


//contentid          ,
//contenttypeid      ,
//homepage           ,
//tel                ,
//title              ,
//firstimage         ,
//firstimage2        ,
//areacode           ,
//sigungucode        ,
//cat1               ,
//cat2               ,
//cat3               ,
//addr1              ,
//addr2              ,
//zipcode            ,
//mapx               ,
//mapy               ,
//overview           ,
//mlevel             ,
//accomcountlodging  ,  
//benikia            ,  
//checkintime        ,  
//checkouttime       ,  
//chkcooking         ,  
//foodplace          ,  
//goodstay           ,  
//hanok              ,  
//infocenterlodging  ,  
//parkinglodging     ,  
//pickup             ,  
//roomcount          ,  
//reservationlodging ,  
//reservationurl     ,  
//roomtype           ,  
//scalelodging       ,  
//subfacility        ,  
//barbecue           ,  
//beauty             ,  
//beverage           ,  
//bicycle            ,  
//campfire           ,  
//fitness            ,  
//karaoke            ,  
//publicbath         ,  
//publicpc           ,  
//sauna              ,  
//seminar            ,  
//sports             ,  
//refundregulation   ,  



