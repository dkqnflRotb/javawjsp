package study.j1116h;

import java.util.Arrays;

public class InputVO {
	private String buyer;
	private String[] proproductClss;
	private	String[] goods;
	private String[] sus;
	private String[] results;
	private String[] totresults;
	private String productClss;
	private String good;
	private String su;
	private String result;
	private String totresult;
	
	public InputVO(String buyer, String productClss, String good, String su,String result, String totresult) {
		super();
		this.buyer = buyer;
		this.productClss = productClss;
		this.good = good;
		this.su = su;
		this.result = result;
		this.totresult = totresult;
	}

	
	public String getBuyer() {
		return buyer;
	}


	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}


	public String[] getProproductClss() {
		return proproductClss;
	}


	public void setProproductClss(String[] proproductClss) {
		this.proproductClss = proproductClss;
	}


	public String[] getGoods() {
		return goods;
	}


	public void setGoods(String[] goods) {
		this.goods = goods;
	}


	public String[] getSus() {
		return sus;
	}


	public void setSus(String[] sus) {
		this.sus = sus;
	}


	public String[] getResults() {
		return results;
	}


	public void setResults(String[] results) {
		this.results = results;
	}


	public String[] getTotresults() {
		return totresults;
	}


	public void setTotresults(String[] totresults) {
		this.totresults = totresults;
	}


	public String getProductClss() {
		return productClss;
	}


	public void setProductClss(String productClss) {
		this.productClss = productClss;
	}


	public String getGood() {
		return good;
	}


	public void setGood(String good) {
		this.good = good;
	}


	public String getSu() {
		return su;
	}


	public void setSu(String su) {
		this.su = su;
	}


	public String getResult() {
		return result;
	}


	public void setResult(String result) {
		this.result = result;
	}


	public String getTotresult() {
		return totresult;
	}


	public void setTotresult(String totresult) {
		this.totresult = totresult;
	}


	@Override
	public String toString() {
		return "InputVO [buyer=" + buyer + ", proproductClss=" + Arrays.toString(proproductClss) + ", goods="
				+ Arrays.toString(goods) + ", sus=" + Arrays.toString(sus) + ", results=" + Arrays.toString(results)
				+ ", totresults=" + Arrays.toString(totresults) + ", productClss=" + productClss + ", good=" + good + ", su="
				+ su + ", result=" + result + ", totresult=" + totresult + "]";
	}
}
	
	
