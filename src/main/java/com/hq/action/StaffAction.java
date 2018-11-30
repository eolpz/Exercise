package com.hq.action;

import java.util.List;

import javax.json.JsonObject;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hq.model.Department;
import com.hq.model.Post;
import com.hq.model.Staff;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class StaffAction extends BaseAction implements ModelDriven<Staff> {

	private Staff staff = new Staff();
	private Integer depId;
	private Integer page = 1;
	private Integer pageSize = 2;
	private Integer poId;
	private String sfName;
	// 依赖service对象
	// private DepartmentService departmentService;
	//
	// // 注入依赖对象
	// public void setDepartmentService(DepartmentService departmentService) {
	// this.departmentService = departmentService;
	// }

	public String list() {
		// List<Staff> list = staffService.getAll();
		Pagination pager = null;
		DetachedCriteria criteria = DetachedCriteria.forClass(Staff.class);
		if (poId == null && sfName == null) {
			pager = staffService.getPage(page, pageSize);
		} else if(poId != null && sfName != null) {
			criteria.add(Restrictions.eq("post.postId",poId ))
			.add(Restrictions.like("staffName", "%" + sfName+ "%"));
			pager = staffService.getPage(criteria,page, pageSize);
		} else if(poId != null && sfName == null) {
			criteria.add(Restrictions.eq("post.postId", poId));
			pager = staffService.getPage(criteria,page, pageSize);
		}
		ActionContext.getContext().put("pager", pager);
		return "list";
	}

	public String toEdit() {
		Staff sta = staffService.getById(staff.getStaffId());
		ActionContext.getContext().put("staff", sta);
		System.out.println("staffid = " + staff.getStaffId());
		// List<Department> depts = departmentService.getAll();
		// ActionContext.getContext().put("depts", depts);
		int did = sta.getPost().getDepartment().getDepId();
		System.out.println("depId = " + did);
		// 对应部门的工资岗位
		// List<Post> posts = postService.getByDepId(did);
		// ActionContext.getContext().put("posts", posts);
		return "edit";
	}

	public String edit() {
		System.out.println("staff = " + staff + ", post = " + staff.getPost() + ", department = "
				+ staff.getPost().getDepartment());
		staffService.update(staff);
		return SUCCESS;
	}

	public void jsonData() throws Exception {
		System.out.println("depId = " + depId);
		List<Post> posts = postService.getByDepId(depId);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json;charset=utf-8");
		ObjectMapper mapper = new ObjectMapper();
		String str = mapper.writeValueAsString(posts);
		response.getWriter().write(str);
		System.out.println("写出完成");
	}

	@Override
	public Staff getModel() {
		return staff;
	}

	public Integer getDepId() {
		return depId;
	}

	public void setDepId(Integer depId) {
		this.depId = depId;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPoId() {
		return poId;
	}

	public void setPoId(Integer poId) {
		this.poId = poId;
	}

	public String getSfName() {
		return sfName;
	}

	public void setSfName(String sfName) {
		this.sfName = sfName;
	}

	

	

}
