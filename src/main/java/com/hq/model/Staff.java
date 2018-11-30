package com.hq.model;

import java.util.Date;

/**
 * `staffId` INT NOT NULL PRIMARY KEY AUTO_INCREMENT, `loginName` VARCHAR(100)
 * DEFAULT NULL, `loginPwd` VARCHAR(100) DEFAULT NULL, `staffName` VARCHAR(100)
 * DEFAULT NULL, `gender` VARCHAR(20) DEFAULT NULL, `onDutyDate` DATETIME
 * DEFAULT NULL, `postId` INT DEFAULT NULL,
 * 
 * @author fsxa
 *
 */
public class Staff {

	private Integer staffId;
	private String loginName;
	private String loginPwd;
	private String staffName;
	private String gender;
	private Date onDutyDate;
	private Post post;

	public Staff() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getStaffId() {
		return staffId;
	}

	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginPwd() {
		return loginPwd;
	}

	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getOnDutyDate() {
		return onDutyDate;
	}

	public void setOnDutyDate(Date onDutyDate) {
		this.onDutyDate = onDutyDate;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	@Override
	public String toString() {
		return "Staff [staffId=" + staffId + ", loginName=" + loginName + ", loginPwd=" + loginPwd + ", staffName="
				+ staffName + ", gender=" + gender + ", onDutyDate=" + onDutyDate + "]";
	}

}
