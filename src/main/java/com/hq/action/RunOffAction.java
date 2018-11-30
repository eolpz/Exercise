package com.hq.action;

import com.hq.model.RunOff;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class RunOffAction extends BaseAction implements ModelDriven<RunOff> {
	private RunOff runOff = new RunOff();
	private Integer page = 1;
	private Integer pageSize = 2;
	
	public String list() {
		
		Pagination pager = runOffService.getPage(page, pageSize);
		ActionContext.getContext().put("pager", pager);
		return "list";
	}
	
	public String toEdit(){
		RunOff run = runOffService.getById(runOff.getRunOffid());
		ActionContext.getContext().put("runOff", run);
		System.out.println("runOffID = " + runOff.getRunOffid());
		
	     return "edit";
	}
	public String edit(){
		System.out.println("runOff = " + runOff );
		runOffService.update(runOff);
	     
	      return SUCCESS;
	}
	
	public String add(){
		runOffService.save(runOff);
		
		return SUCCESS;
		
	}
	
	public String view(){
		RunOff run = runOffService.getById(runOff.getRunOffid());
		ActionContext.getContext().put("runOff", run);
		System.out.println("runOffID = " + runOff.getRunOffid());
		
	     return "view";
	}

	@Override
	public RunOff getModel() {
		// TODO Auto-generated method stub
		return null;
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
	

}
