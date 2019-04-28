package cn.wzmall.model;

public class Goods {
	private  int goods_id;
	private String good_one;
	private String goods_number;
	
	public String getGood_one() {
		return good_one;
	}
	public void setGood_one(String good_one) {
		this.good_one = good_one;
	}
	public String getGoods_number() {
		return goods_number;
	}
	public void setGoods_number(String goods_number) {
		this.goods_number = goods_number;
	}


	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
}
