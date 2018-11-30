package com.hq.model;

import java.util.Date;

public class Refer {
	private Integer referid;
	private String refername;
	private String telephone;
	private String qq;
	private Date creatDate;
	private String intentionLevel;
	private String Source;
	private String status;
	private String Remark;
	
	private Clazz clazz;
	private Course course;
	private Staff staff;
	
	
	
	public Clazz getClazz() {
		return clazz;
	}
	public void setClazz(Clazz clazz) {
		this.clazz = clazz;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	
	
	public Refer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Refer(Integer referid, String refername, String telephone, String qq, Date creatDate, String intentionLevel,
			String source, String status,String remark) {
		super();
		this.referid = referid;
		this.refername = refername;
		this.telephone = telephone;
		this.qq = qq;
		this.creatDate = creatDate;
		this.intentionLevel = intentionLevel;
		Source = source;
		this.status = status;
		Remark = remark;
	}
	public Integer getReferid() {
		return referid;
	}
	public void setReferid(Integer referid) {
		this.referid = referid;
	}
	public String getRefername() {
		return refername;
	}
	public void setRefername(String refername) {
		this.refername = refername;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public Date getCreatDate() {
		return creatDate;
	}
	public void setCreatDate(Date creatDate) {
		this.creatDate = creatDate;
	}
	public String getIntentionLevel() {
		return intentionLevel;
	}
	public void setIntentionLevel(String intentionLevel) {
		this.intentionLevel = intentionLevel;
	}
	public String getSource() {
		return Source;
	}
	public void setSource(String source) {
		Source = source;
	}
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String remark) {
		Remark = remark;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Refer [referid=" + referid + ", refername=" + refername + ", telephone=" + telephone + ", qq=" + qq
				+ ", creatDate=" + creatDate + ", intentionLevel=" + intentionLevel + ", Source=" + Source + ",status=" + status + ", Remark="
				+ Remark + "]";
	}
	 
	

}
