package com.hq.util;

import java.util.List;

public class Pagination {

	private List<?> data;
	private int page;
	private int pageSize;
	private int total;
	
	//总页面数
	public int getPageCount(){
		if(total % pageSize == 0){
			return total / pageSize;
		}
		return total / pageSize + 1;
	}

	public List<?> getData() {
		return data;
	}

	public void setData(List<?> data) {
		this.data = data;
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

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

}
