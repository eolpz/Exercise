package com.hq.action;

import com.hq.model.Clazz;
import com.hq.model.Refer;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class ReferAction extends BaseAction implements ModelDriven<Refer>{
	private Refer refer = new Refer();
	private Integer page = 1;
	private Integer pageSize = 2;
	
	public String list() {
		
		Pagination pager = referService.getPage(page, pageSize);
		ActionContext.getContext().put("pager", pager);
		return "list";
	}
	
	public String toEdit(){
		Refer ref = referService.getById(refer.getReferid());
		ActionContext.getContext().put("refer", ref);
		System.out.println("referID = " + ref.getReferid());
		return "edit";
		
	}
	public String edit(){
		System.out.println("refer = " + refer );
		referService.update(refer);
	     
	      return SUCCESS;
	}
	
	public String add(){
		referService.save(refer);
		
		return SUCCESS;
		
	}
	public String view(){
		Refer ref = referService.getById(refer.getReferid());
		ActionContext.getContext().put("refer", ref);
		System.out.println("referID = " + refer.getReferid());
		
	     return "view";
	}



	@Override
	public Refer getModel() {
		// TODO Auto-generated method stub
		return refer;
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
