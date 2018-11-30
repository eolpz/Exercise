package com.hq.action;

import com.hq.model.Station;
import com.hq.util.Pagination;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class StationAction extends BaseAction implements ModelDriven<Station>{
	
	private Station station = new Station();
	private Integer page = 1;
	private Integer pageSize = 2;
	
	public String list() {
		
		Pagination pager = referService.getPage(page, pageSize);
		ActionContext.getContext().put("pager", pager);
		return "list";
	}
	
	public String toEdit(){
		Station sta = stationService.getById(station.getStationid());
		ActionContext.getContext().put("station", sta);
		System.out.println("stationID = " + station.getStationid());
		return "edit";
		
	}
	public String edit(){
		System.out.println("station = " + station );
		stationService.update(station);
	     
	      return SUCCESS;
	}
	
	public String add(){
		stationService.save(station);
		
		return SUCCESS;
		
	}
	public String view(){
		Station sta = stationService.getById(station.getStationid());
		ActionContext.getContext().put("station", sta);
		System.out.println("stationID = " + station.getStationid());
		
	     return "view";
	}



	@Override
	public Station getModel() {
		// TODO Auto-generated method stub
		return station;
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
