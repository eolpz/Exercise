package com.hq.model;

import java.util.Date;

public class Graduate {
	private Integer graduateid;
	private String companyName;
	private Double salary;
	private String post;
	private Date entryTime;
	private String remark;
	
	private Clazz clazz;
	private Student student;
	
	
	public Clazz getClazz() {
		return clazz;
	}
	public void setClazz(Clazz clazz) {
		this.clazz = clazz;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Graduate() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Graduate(Integer graduateid, String companyName, Double salary, String post, Date entryTime, String remark) {
		super();
		this.graduateid = graduateid;
		this.companyName = companyName;
		this.salary = salary;
		this.post = post;
		this.entryTime = entryTime;
		this.remark = remark;
	}
	public Integer getGraduateid() {
		return graduateid;
	}
	public void setGraduateid(Integer graduateid) {
		this.graduateid = graduateid;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public Date getEntryTime() {
		return entryTime;
	}
	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "Graduate [graduateid=" + graduateid + ", companyName=" + companyName + ", salary=" + salary + ", post="
				+ post + ", entryTime=" + entryTime + ", remark=" + remark + "]";
	}
	
	

}
