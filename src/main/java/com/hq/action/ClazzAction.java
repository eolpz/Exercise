package com.hq.action;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hq.model.Clazz;
import com.hq.service.ClazzService;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class ClazzAction extends BaseAction implements ModelDriven<Clazz>{
	
	private Clazz clazz  = new Clazz(); 
	private Integer page = 1;
	private Integer pageSize = 2;
	
	public String list() {
		
		Pagination pager = clazzService.getPage(page, pageSize);
		ActionContext.getContext().put("pager", pager);
		return "list";
	}
	
	public String toEdit(){
		Clazz cla = clazzService.getById(clazz.getCid());
		ActionContext.getContext().put("clazz", cla);
		System.out.println("classID = " + clazz.getCid());
		
	     return "edit";
	}
	public String edit(){
		System.out.println("clazz = " + clazz );
		clazzService.update(clazz);
	     
	      return SUCCESS;
	}
	
	public String add(){
		clazzService.save(clazz);
		
		return SUCCESS;
		
	}
	
	public String view(){
		Clazz cla = clazzService.getById(clazz.getCid());
		ActionContext.getContext().put("clazz", cla);
		System.out.println("classID = " + clazz.getCid());
		
	     return "view";
	}



	@Override
	public Clazz getModel() {
		// TODO Auto-generated method stub
		return clazz;
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
