package com.hq.model;

import java.util.Date;

public class Clazz {
	private Integer cid;
	private String cname;
	private Date btime;
	private Date etime;
	private String status;
	private Integer totalCount;
	private Integer upgradeCount;
	private Integer changeCount;
	private Integer runoffCount;
	private String remark;
	private String uploadPath;
	private String uploadFileName;
	private Date uploadTime;
	private Course course;
	
	
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public Clazz(Integer cid, String cname, Date btime, Date etime, String status, Integer totalCount,
			Integer upgradeCount, Integer changeCount, Integer runoffCount, String remark, String uploadPath,
			String uploadFileName, Date uploadTime) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.btime = btime;
		this.etime = etime;
		this.status = status;
		this.totalCount = totalCount;
		this.upgradeCount = upgradeCount;
		this.changeCount = changeCount;
		this.runoffCount = runoffCount;
		this.remark = remark;
		this.uploadPath = uploadPath;
		this.uploadFileName = uploadFileName;
		this.uploadTime = uploadTime;
	}
	public Clazz() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Date getBtime() {
		return btime;
	}
	public void setBtime(Date btime) {
		this.btime = btime;
	}
	public Date getEtime() {
		return etime;
	}
	public void setEtime(Date etime) {
		this.etime = etime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getUpgradeCount() {
		return upgradeCount;
	}
	public void setUpgradeCount(Integer upgradeCount) {
		this.upgradeCount = upgradeCount;
	}
	public Integer getChangeCount() {
		return changeCount;
	}
	public void setChangeCount(Integer changeCount) {
		this.changeCount = changeCount;
	}
	public Integer getRunoffCount() {
		return runoffCount;
	}
	public void setRunoffCount(Integer runoffCount) {
		this.runoffCount = runoffCount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public Date getUploadTime() {
		return uploadTime;
	}
	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}
	@Override
	public String toString() {
		return "Class [cid=" + cid + ", cname=" + cname + ", btime=" + btime + ", etime=" + etime + ", status=" + status
				+ ", totalCount=" + totalCount + ", upgradeCount=" + upgradeCount + ", changeCount=" + changeCount
				+ ", runoffCount=" + runoffCount + ", remark=" + remark + ", uploadPath=" + uploadPath
				+ ", uploadFileName=" + uploadFileName + ", uploadTime=" + uploadTime + "]";
	}
	
	
	

}
