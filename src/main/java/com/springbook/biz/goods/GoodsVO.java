package com.springbook.biz.goods;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


// VO(Value Object)
public class GoodsVO {
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

	@Override
	public String toString() {
		return "NoticeVO [seq=" + seq + ", name=" + name + ", price=" + price
				 + ", stock=" + stock + ", detail1=" + detail1 + ", detail2=" + detail2 
				 + ", detail3=" + detail3 + ", detail4=" + detail4 + ", detail5=" + detail5 
				 + ", pimage=" + pimage + ", regDate=" + regDate + "]";
	}

}
