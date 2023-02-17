package ArithBeans;

public class ArithBean {
	int x;
	int y;
	int result;
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	
	public int getCalc1() {
		result = x + y;
		return result;
	}
	public int getCalc2() {
		result = x - y;
		return result;
	}
	public int getCalc3() {
		result = x * y;
		return result;
	}
	public int getCalc4() {
		result = x / y;
		return result;
	}

}
