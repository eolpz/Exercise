package com.hq.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hq.model.Department;
import com.hq.model.Post;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class PostAction extends BaseAction implements ModelDriven<Post>  {
	private Post post = new Post();
	private Integer depId;
	private int page=1;
	private int pageSize=2;

	public String list() {
		//List<Post> list = postService.getAll();
		Pagination pager = postService.getPage(page, pageSize);
		ActionContext.getContext().put("pager", pager);
		return "list";
	}
	
	public String toEdit(){
		Post pos = postService.getById(post.getPostId());
		ActionContext.getContext().put("post", pos);
		System.out.println("postid = " + post.getPostId());
		int did = pos.getDepartment().getDepId();
		
	     return "edit";
	}
	public String edit(){
		System.out.println("post = " + post + ",department = " + post.getDepartment());
	      postService.update(post);
	      return SUCCESS;
	}
	
	public String add(){
		postService.save(post);
		return SUCCESS;
		
	}
	public void jsonData() throws Exception{
		System.out.println("depId = " + depId);
		
		Department dept = departmentService.getById(depId);
		/*List<Post> posts = postService.getByDepId(depId);*/
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json;charset=utf-8");
		ObjectMapper mapper = new ObjectMapper();
		String dep = mapper.writeValueAsString(dept);
		/*String pos = mapper.writeValueAsString(posts);*/
		response.getWriter().write(dep);
		System.out.println("写出完成");
		
	}

	@Override
	public Post getModel() {
		// TODO Auto-generated method stub
		return post;
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

	public Integer getDepId() {
		return depId;
	}

	public void setDepId(Integer depId) {
		this.depId = depId;
	}

}
