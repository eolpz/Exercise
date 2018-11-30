package com.hq.action;

import com.hq.model.Clazz;
import com.hq.model.Follow;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class FollowAction  extends BaseAction implements ModelDriven<Follow>{
	
	protected Follow follow = new  Follow();
	private Integer page = 1;
	private Integer pageSize = 2;
	
	public String list() {
		
		Pagination pager = followService.getPage(page, pageSize);
		ActionContext.getContext().put("pager", pager);
		return "list";
	}
	
	public String toEdit(){
		Follow fol = followService.getById(follow.getFollowid());
		ActionContext.getContext().put("follow", fol);
		System.out.println("followID = " + follow.getFollowid());
		
	     return "edit";
	}
	public String edit(){
		System.out.println("follow = " + follow );
		followService.update(follow);
	     
	      return SUCCESS;
	}
	
	public String add(){
		followService.save(follow);
		
		return SUCCESS;
		
	}



	@Override
	public Follow getModel() {
		// TODO Auto-generated method stub
		return follow;
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
