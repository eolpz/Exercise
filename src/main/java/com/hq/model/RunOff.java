package com.hq.model;

import java.util.Date;

public class RunOff {
	private Integer runOffid;
	private Date creatdate;
	private String isRefund;
	private double refundAmount;
	private String remark;
	
	private Student student;
	private Staff staff;
	public RunOff() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RunOff(Integer runOffid, Date creatdate, String isRefund, double refundAmount, String remark) {
		super();
		this.runOffid = runOffid;
		this.creatdate = creatdate;
		this.isRefund = isRefund;
		this.refundAmount = refundAmount;
		this.remark = remark;
	}
	public Integer getRunOffid() {
		return runOffid;
	}
	public void setRunOffid(Integer runOffid) {
		this.runOffid = runOffid;
	}
	public Date getCreatdate() {
		return creatdate;
	}
	public void setCreatdate(Date creatdate) {
		this.creatdate = creatdate;
	}
	public String getIsRefund() {
		return isRefund;
	}
	public void setIsRefund(String isRefund) {
		this.isRefund = isRefund;
	}
	public double getRefundAmount() {
		return refundAmount;
	}
	public void setRefundAmount(double refundAmount) {
		this.refundAmount = refundAmount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	@Override
	public String toString() {
		return "RunOff [runOffid=" + runOffid + ", creatdate=" + creatdate + ", isRefund=" + isRefund
				+ ", refundAmount=" + refundAmount + ", remark=" + remark + ", student=" + student + ", staff=" + staff
				+ "]";
	}
	
	
	
	

}
