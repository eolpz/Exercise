package com.hq.action;

import java.util.List;

import com.hq.model.Department;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class DepartmentAction extends BaseAction implements ModelDriven<Department>{
	
	private Department department = new Department();
	private int page=1;
	private int pageSize=3;
//	// 依赖service对象
//	private DepartmentService departmentService;
//
//	// 注入依赖对象
//	public void setDepartmentService(DepartmentService departmentService) {
//		this.departmentService = departmentService;
//	}
	public String list() {
		//List<Department> list = departmentService.getAll();
		Pagination pager = departmentService.getPage(page, pageSize);
		ActionContext.getContext().put("pager", pager);
		return "list";
	}
	
	
	public String toEdit() {
		int id = department.getDepId();
		System.out.println("id = " + id);
		Department dept = departmentService.getById(id);
		ActionContext.getContext().put("dept", dept);
		return "edit";
	}
	public String edit() {
		System.out.println("department = " + department);
		departmentService.update(department);
		return SUCCESS;
	}
	@Override
	public Department getModel() {
		return department;
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
