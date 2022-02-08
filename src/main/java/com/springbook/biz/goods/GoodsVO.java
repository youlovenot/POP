package com.springbook.biz.goods;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


// VO(Value Object)
public class GoodsVO {
	private int seq;
	private String name;
	private int price;
	private int stock;
	private String[] details;
	private String pimage;
	private Date regDate;
	private MultipartFile uploadFile;
	
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

	public String[] getDetails() {
		return details;
	}

	public void setDetails(String[] details) {
		this.details = details;
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
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	@Override
	public String toString() {
		return "NoticeVO [seq=" + seq + ", name=" + name + ", price=" + price
				 + ", stock=" + stock + ", detail1=" + details[1] + ", detail2=" + details[2] 
				 + ", detail3=" + details[3] + ", detail4=" + details[4] + ", detail5=" + details[5] 
				 + ", pimage=" + pimage + ", regDate=" + regDate + "]";
	}

}
