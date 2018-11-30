package com.hq.model;

import java.util.Date;

public class Follow {
	private Integer followid;
	private Date followtime;
	private String content;
	
	private Staff staff;
	private Refer refer;
	
	
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	public Refer getRefer() {
		return refer;
	}
	public void setRefer(Refer refer) {
		this.refer = refer;
	}
	
	
	public Follow() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Follow(Integer followid, Date followtime, String content) {
		super();
		this.followid = followid;
		this.followtime = followtime;
		this.content = content;
	}
	public Integer getFollowid() {
		return followid;
	}
	public void setFollowid(Integer followid) {
		this.followid = followid;
	}
	public Date getFollowtime() {
		return followtime;
	}
	public void setFollowtime(Date followtime) {
		this.followtime = followtime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "Follow [followid=" + followid + ", followtime=" + followtime + ", content=" + content + "]";
	}
	
	
	

}
