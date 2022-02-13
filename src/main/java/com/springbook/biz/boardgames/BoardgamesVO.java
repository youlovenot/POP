package com.springbook.biz.boardgames;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


// VO(Value Object)
public class BoardgamesVO {
	private int seq;
	private String name;
	private int price;
	private int stock;
	private String detail1;
	private String detail2;
	private String detail3;
	private String detail4;
	private String detail5;
	private String pimage;
	private Date regDate;
	private String searchCondition;
	private String searchKeyword;
	private MultipartFile d1upload;
	private MultipartFile d2upload;
	private MultipartFile d3upload;
	private MultipartFile d4upload;
	private MultipartFile d5upload;
	private MultipartFile imgupload;
	
	// Getter/Setter 메소드
	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public void setDetails(String[] details) {
		this.detail1 = details[0];
		this.detail2 = details[1];
		this.detail3 = details[2];
		this.detail4 = details[3];
		this.detail5 = details[4];
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public MultipartFile[] getDupload() {
		MultipartFile[] dUploads = {d1upload, d2upload, d3upload, d4upload, d5upload};
		return dUploads;
	}

	public MultipartFile getImgupload() {
		return imgupload;
	}

	public void setImgupload(MultipartFile imgupload) {
		this.imgupload = imgupload;
	}

	public String getDetail1() {
		return detail1;
	}

	public void setDetail1(String detail1) {
		this.detail1 = detail1;
	}

	public String getDetail2() {
		return detail2;
	}

	public void setDetail2(String detail2) {
		this.detail2 = detail2;
	}

	public String getDetail3() {
		return detail3;
	}

	public void setDetail3(String detail3) {
		this.detail3 = detail3;
	}

	public String getDetail4() {
		return detail4;
	}

	public void setDetail4(String detail4) {
		this.detail4 = detail4;
	}

	public String getDetail5() {
		return detail5;
	}

	public void setDetail5(String detail5) {
		this.detail5 = detail5;
	}

	public MultipartFile getD1upload() {
		return d1upload;
	}

	public void setD1upload(MultipartFile d1upload) {
		this.d1upload = d1upload;
	}

	public MultipartFile getD2upload() {
		return d2upload;
	}

	public void setD2upload(MultipartFile d2upload) {
		this.d2upload = d2upload;
	}

	public MultipartFile getD3upload() {
		return d3upload;
	}

	public void setD3upload(MultipartFile d3upload) {
		this.d3upload = d3upload;
	}

	public MultipartFile getD4upload() {
		return d4upload;
	}

	public void setD4upload(MultipartFile d4upload) {
		this.d4upload = d4upload;
	}

	public MultipartFile getD5upload() {
		return d5upload;
	}

	public void setD5upload(MultipartFile d5upload) {
		this.d5upload = d5upload;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	@Override
	public String toString() {
		return "NoticeVO [seq=" + seq + ", name=" + name + ", price=" + price
				 + ", stock=" + stock + ", detail1=" + detail1 + ", detail2=" + detail2 
				 + ", detail3=" + detail3 + ", detail4=" + detail4 + ", detail5=" + detail5 
				 + ", pimage=" + pimage + ", regDate=" + regDate + "]";
	}

}
