package com.hq.action;

import com.hq.service.ClazzService;
import com.hq.service.CourseService;
import com.hq.service.DepartmentService;
import com.hq.service.FollowService;
import com.hq.service.GraduateService;
import com.hq.service.PostService;
import com.hq.service.ReferService;
import com.hq.service.RunOffService;
import com.hq.service.StaffService;
import com.hq.service.StationService;
import com.hq.service.StudentService;
import com.hq.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {

	// 依赖service对象
	protected DepartmentService departmentService;
	protected PostService postService;
	protected StaffService staffService;
	protected ClazzService clazzService;
	protected CourseService courseService;
	protected ReferService referService;
	protected FollowService followService;
	protected StudentService studentService;
	protected StationService stationService;
	protected RunOffService runOffService;
	protected GraduateService graduateService;
	protected UserService UserService;
	
	//protected UserService userService;

	public void setUserService(UserService userService) {
		this.UserService = userService;
	}

	// 注入依赖对象
	public void setDepartmentService(DepartmentService departmentService) {
		this.departmentService = departmentService;
	}
	
	public void setPostService(PostService postService) {
		this.postService = postService;
	}
	
	public void setStaffService(StaffService staffService) {
		this.staffService = staffService;
	}

	public void setClazzService(ClazzService clazzService) {
		this.clazzService = clazzService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public void setReferService(ReferService referService) {
		this.referService = referService;
	}

	public void setFollowService(FollowService followService) {
		this.followService = followService;
	}
	
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	public void setStationService(StationService stationService) {
		this.stationService = stationService;
	}
	
	public void setRunOffService(RunOffService runOffService) {
		this.runOffService = runOffService;
	}
	
	public void setGraduateService(GraduateService graduateService) {
		this.graduateService = graduateService;
	}
	
}
