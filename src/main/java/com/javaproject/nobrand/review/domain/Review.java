package com.javaproject.nobrand.review.domain;

import java.util.Date;

public class Review {
	private int goodsId;
	private int score;
	private int count;
	private Date createAt;
	public Review() {}
	
	public Review(int goodsId, int score, int count, Date createAt) {
		this.goodsId = goodsId;
		this.score = score;
		this.count = count;
		this.createAt = createAt;
	}
	public Review(int score, int count, Date createAt) {
		this.score = score;
		this.count = count;
		this.createAt = createAt;
	}
	public Review(int goodsId, int score, int count) {
		this.goodsId = goodsId;
		this.score = score;
		this.count = count;
	}

	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Date getCreateAt() {
		return createAt;
	}
	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	};
	

}
