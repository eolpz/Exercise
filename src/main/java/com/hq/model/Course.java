package com.hq.model;

public class Course {
	private Integer courseid;
	private double courseCost;
	private Integer total;
	private String name;
	private String remake;
	
	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Course(Integer courseid, double courseCost, Integer total, String name, String remake) {
		super();
		this.courseid = courseid;
		this.courseCost = courseCost;
		this.total = total;
		this.name = name;
		this.remake = remake;
	}

	public Integer getCourseid() {
		return courseid;
	}

	public void setCourseid(Integer courseid) {
		this.courseid = courseid;
	}


	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemake() {
		return remake;
	}

	public void setRemake(String remake) {
		this.remake = remake;
	}

	public double getCourseCost() {
		return courseCost;
	}

	public void setCourseCost(double courseCost) {
		this.courseCost = courseCost;
	}

	@Override
	public String toString() {
		return "Course [courseid=" + courseid + ", courseCost=" + courseCost + ", total=" + total + ", name=" + name
				+ ", remake=" + remake + "]";
	}

	
	
	
	

}
