package sungjuk;

//mvc => DTO = VO 
public class gradeBean {
	private String name;
	private int kor;
	private int eng;
	private int math;
	private int total;
	private double aver;
	
	// getter&setter
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getTotal() {
		total = math + eng + kor;
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public double getaver() {
		aver = total/3;
		return aver;
	}
	public void setaver(double aver) {
		this.aver = aver;
	}


	public String getGrade() {
		String grade="";
		if(aver >= 90)
			grade = "A";
		else if (aver >= 80)
			grade = "B";
		else if (aver >= 70)
			grade = "C";
		else if (aver >= 60)
			grade = "D";
		else
			grade = "F";
			return grade;
	}
	
	
	
	
}
