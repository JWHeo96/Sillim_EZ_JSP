package kr.co.ezen;

public class custVO {
	private String cust_name;
	private int cust_age;
	private int cust_num;
	

	private String cust_name2;
	public String getCust_name2() {
		return cust_name2;
	}
	public void setCust_name2(String cust_name2) {
		this.cust_name2 = cust_name2;
	}
	public int getCust_age2() {
		return cust_age2;
	}
	public void setCust_age2(int cust_age2) {
		this.cust_age2 = cust_age2;
	}
	public int getCust_num2() {
		return cust_num2;
	}
	public void setCust_num2(int cust_num2) {
		this.cust_num2 = cust_num2;
	}
	private int cust_age2;
	private int cust_num2;
	
	public custVO() {
		
	}
	public custVO(int cust_num, String cust_name, int cust_age) {
		this.cust_num = cust_num;
		this.cust_name = cust_name;
		this.cust_age = cust_age;
	}

	// getter & setter
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	public int getCust_age() {
		return cust_age;
	}
	public void setCust_age(int cust_age) {
		this.cust_age = cust_age;
	}
	public int getCust_num() {
		return cust_num;
	}
	public void setCust_num(int cust_num) {
		this.cust_num = cust_num;
	}

}
