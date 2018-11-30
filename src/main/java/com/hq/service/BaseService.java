package com.hq.service;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.hq.util.Pagination;

public interface BaseService<T> {
	
	public void save(T obj);
	
	public void update(T obj);
	
	public void delete(Serializable id);
	
	public T getById(Serializable id);
	
	public List<T> getAll();

	public Pagination getPage(int page,int pageSize);
	
	public Pagination getPage(DetachedCriteria criteria,int page,int pageSize);
	
}
