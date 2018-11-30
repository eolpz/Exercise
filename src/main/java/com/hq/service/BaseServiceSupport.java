package com.hq.service;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.hq.dao.BaseDao;
import com.hq.util.Pagination;

public class BaseServiceSupport<T> implements BaseService<T> {
	
	//依赖basedao对象
	protected BaseDao baseDao;
	//set注入依赖对象
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	//获取泛型类型
	public Class<T> getGenericType(){
		//获取泛型父类  从父接口类型转换子接口类型
		ParameterizedType  pt = (ParameterizedType) getClass().getGenericSuperclass();
		//获取泛型数组的方法  目的获取真实的泛型类型
		Type[] types = pt.getActualTypeArguments();
		if(types == null || types.length == 0){
			throw new IllegalArgumentException("必须提供泛型参数");
		}
		return (Class<T>) types[0];
	}

	@Override
	public void save(T obj) {
		baseDao.save(obj);
		
	}

	@Override
	public void update(T obj) {
		baseDao.update(obj);
		
	}

	@Override
	public void delete(Serializable id) {
		baseDao.delete(getGenericType(), id);
		
	}

	@Override
	public T getById(Serializable id) {
		return baseDao.findById(getGenericType(), id);
	}

	@Override
	public List<T> getAll() {
		return baseDao.findAll(getGenericType());
	}
	@Override
	public Pagination getPage(int page, int pageSize) {
		Pagination pager = new Pagination();
		pager.setPage(page);
		pager.setPageSize(pageSize);
		long total = (Long) baseDao.findObj("select count(*) from " + getGenericType().getName());
		System.out.println("总记录数 total  = " + total);
		pager.setTotal((int)total);
		pager.setData(baseDao.findPage(getGenericType(), page, pageSize));
		return pager;
	}
	@Override
	public Pagination getPage(DetachedCriteria criteria,int page, int pageSize) {
		Pagination pager = baseDao.findPage(criteria, page, pageSize);
		return pager;
	}
	

}
