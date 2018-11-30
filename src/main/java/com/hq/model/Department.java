package com.hq.model;

public class Department {

	private Integer depId;
	private String depName;

	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Department(Integer depId) {
		super();
		this.depId = depId;
	}

	public Integer getDepId() {
		return depId;
	}

	public void setDepId(Integer depId) {
		this.depId = depId;
	}

	public String getDepName() {
		return depName;
	}

	public void setDepName(String depName) {
		this.depName = depName;
	}

	@Override
	public String toString() {
		return "Department [depId=" + depId + ", depName=" + depName + "]";
	}

}
