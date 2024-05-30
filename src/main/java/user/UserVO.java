package user;

public class UserVO {
	private int idx;
	private String name;
	private int studentId;
	private int pwd;
	private String department;
	private String phoneNum;
	private String expCheck;
	private int expTime;
	private String expOk;
	private int joinCheck;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getPwd() {
		return pwd;
	}
	public void setPwd(int pwd) {
		this.pwd = pwd;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getExpCheck() {
		return expCheck;
	}
	public void setExpCheck(String expCheck) {
		this.expCheck = expCheck;
	}
	public int getExpTime() {
		return expTime;
	}
	public void setExpTime(int expTime) {
		this.expTime = expTime;
	}
	public String getExpOk() {
		return expOk;
	}
	public void setExpOk(String expOk) {
		this.expOk = expOk;
	}
	public int getJoinCheck() {
		return joinCheck;
	}
	public void setJoinCheck(int joinCheck) {
		this.joinCheck = joinCheck;
	}
	@Override
	public String toString() {
		return "UserVO [idx=" + idx + ", name=" + name + ", studentId=" + studentId + ", pwd=" + pwd + ", department="
				+ department + ", phoneNum=" + phoneNum + ", expCheck=" + expCheck + ", expTime=" + expTime + ", expOk=" + expOk
				+ ", joinCheck=" + joinCheck + "]";
	}
	
	
}