package kr.entity;

public class sumMonthPay {

	private String day;
	private int sumPay;
	
	public sumMonthPay() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	public String getDay() {
		return day;
	}





	public void setDay(String day) {
		this.day = day;
	}





	public int getSumPay() {
		return sumPay;
	}





	public void setSumPay(int sumPay) {
		this.sumPay = sumPay;
	}





	@Override
	public String toString() {
		return "[day=" + day + ", sumPay=" + sumPay + "]";
	}
	
	
	
}
