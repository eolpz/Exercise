package com.hq.model;

public class Post {

	private Integer postId;
	private String postName;
	private Department department;

	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Post(Integer postId, String postName) {
		super();
		this.postId = postId;
		this.postName = postName;
	}

	public Integer getPostId() {
		return postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}

	public String getPostName() {
		return postName;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}




	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	@Override
	public String toString() {
		return "Post [postId=" + postId + ", postName=" + postName + "]";
	}

}
