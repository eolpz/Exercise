package com.hq.action;

import com.hq.model.Student;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class StudentAction extends BaseAction implements ModelDriven<Student> {
	private Student student = new Student();
	private Integer page = 1;
	private Integer pageSize = 2;
	
	public String list() {
		
		Pagination pager = studentService.getPage(page, pageSize);
		ActionContext.getContext().put("pager", pager);
		return "list";
	}
	
	public String toEdit(){
		Student stu = studentService.getById(student.getStudentid());
		ActionContext.getContext().put("student", stu);
		System.out.println("studentID = " + student.getStudentid());
		
	     return "edit";
	}
	public String edit(){
		System.out.println("student = " + student );
		studentService.update(student);
	     
	      return SUCCESS;
	}
	
	public String add(){
		studentService.save(student);
		
		return SUCCESS;
		
	}
	
	

	@Override
	public Student getModel() {
		// TODO Auto-generated method stub
		return student;
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
