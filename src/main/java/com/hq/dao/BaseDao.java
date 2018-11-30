package com.hq.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;

import com.hq.util.Pagination;

public interface BaseDao {
	
	public void save(Object obj);// 保存
	
	public void update(Object obj);// 更新
	
	public <T> T findById(Class<T> t,Serializable id);// 根据id查找对象
	
	public <T> void delete(Class<T> t,Serializable id);// 删除对象
	
	public <T> List<T> findAll(Class<T> t);// 查询所有
	
	public <T> List<T> findPage(Class<T> t,int page,int pageSize);// 分页
	
	public Pagination findPage(DetachedCriteria criteria, int page, int pageSize);//按条件查询
	
	public Object findObj(String sql);// 返回一个对象的方法

	public Session getSession();// 得到session
	
}
