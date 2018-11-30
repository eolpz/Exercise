package com.hq.action;

import com.hq.model.Graduate;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class GraduateAction extends BaseAction implements ModelDriven<Graduate>{
	
	protected Graduate graduate = new  Graduate();
	private Integer page = 1;
	private Integer pageSize = 2;
	
	public String list() {
		
		Pagination pager = graduateService.getPage(page, pageSize);
		ActionContext.getContext().put("pager", pager);
		return "list";
	}
	
	public String toEdit(){
		Graduate gra = graduateService.getById(graduate.getGraduateid());
		ActionContext.getContext().put("Graduate", gra);
		System.out.println("graduateID = " + graduate.getGraduateid());
		
	     return "edit";
	}
	public String edit(){
		System.out.println("graduate = " + graduate );
		graduateService.update(graduate);
	     
	      return SUCCESS;
	}
	
	public String add(){
		graduateService.save(graduate);
		
		return SUCCESS;
		
	}



	@Override
	public Graduate getModel() {
		// TODO Auto-generated method stub
		return graduate;
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
