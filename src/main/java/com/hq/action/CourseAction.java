package com.hq.action;

import com.hq.model.Clazz;
import com.hq.model.Course;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class CourseAction extends BaseAction implements ModelDriven<Course> {
	private Course course = new Course();
	
	private Integer page = 1;
	private Integer pageSize = 2;
	public String list() {
		// List<Staff> list = staffService.getAll();
		Pagination pager = courseService.getPage(page, pageSize);
		ActionContext.getContext().put("pager", pager);
		return "list";
	}
	
	public String toEdit(){
		Clazz cla = clazzService.getById(course.getCourseid());
		ActionContext.getContext().put("clazz", cla);
		System.out.println("courseID = " + course.getCourseid());
		
	     return "edit";
	}
	public String edit(){
		System.out.println("course = " + course );
		courseService.update(course);
	     
	      return SUCCESS;
	}
	
	public String add(){
		courseService.save(course);
		
		return SUCCESS;
		
	}

	@Override
	public Course getModel() {
		// TODO Auto-generated method stub
		return course;
	}
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

}
