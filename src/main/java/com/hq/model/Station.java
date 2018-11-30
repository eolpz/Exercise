package com.hq.model;

import java.util.Date;

public class Station {
	private Integer stationid;
	private Integer flag;
	private Integer staffids;
	private Date createDate;
	private String isRefund;
	private Double refundAmount;
	private String remark;
	
	private Student student;
	private Staff staff;
	
	public Station() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Station(Integer stationid,  Integer flag, Integer staffids, Date createDate,
			String isRefund, Double refundAmount, String remark) {
		super();
		this.stationid = stationid;
		this.flag = flag;
		this.staffids = staffids;
		this.createDate = createDate;
		this.isRefund = isRefund;
		this.refundAmount = refundAmount;
		this.remark = remark;
	}
	public Integer getStationid() {
		return stationid;
	}
	public void setStationid(Integer stationid) {
		this.stationid = stationid;
	}

	public Integer getFlag() {
		return flag;
	}
	public void setFlag(Integer flag) {
		this.flag = flag;
	}
	public Integer getStaffids() {
		return staffids;
	}
	public void setStaffids(Integer staffids) {
		this.staffids = staffids;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getIsRefund() {
		return isRefund;
	}
	public void setIsRefund(String isRefund) {
		this.isRefund = isRefund;
	}
	public Double getRefundAmount() {
		return refundAmount;
	}
	public void setRefundAmount(Double refundAmount) {
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
		return "Station [stationid=" + stationid +  ", flag=" + flag + ", staffids="
				+ staffids + ", createDate=" + createDate + ", isRefund=" + isRefund + ", refundAmount=" + refundAmount
				+ ", remark=" + remark + ", student=" + student + ", staff=" + staff + "]";
	}
	
	
}
