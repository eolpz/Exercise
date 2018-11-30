package com.hq.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.query.Query;

import com.hq.util.Pagination;

public class BaseDaoSupport implements BaseDao{
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void save(Object obj) {
		// TODO Auto-generated method stub
		getSession().save(obj);
	}

	@Override
	public void update(Object obj) {
		// TODO Auto-generated method stub
		getSession().update(obj);
	}

	@Override
	public <T> T findById(Class<T> t, Serializable id) {
		// TODO Auto-generated method stub
		return getSession().get(t, id);
	}

	@Override
	public <T> void delete(Class<T> t, Serializable id) {
		// TODO Auto-generated method stub
		getSession().delete(findById(t, id));;
	}

	@Override
	public <T> List<T> findAll(Class<T> t) {
		// TODO Auto-generated method stub
		return getSession().createQuery("from "+ t.getName()).list();
	}

	@Override
	public <T> List<T> findPage(Class<T> t, int page, int pageSize) {
		Query<T> query = getSession().createQuery("from " + t.getName())
				.setFirstResult((page -1) * pageSize)
				.setMaxResults(pageSize);
		return query.list();
	}

	@Override
	public Pagination findPage(DetachedCriteria criteria, int page, int pageSize) {
		Pagination pager = new Pagination();
		pager.setPage(page);
		pager.setPageSize(pageSize);
		long total = (long) criteria.setProjection(Projections.rowCount())
				.getExecutableCriteria(getSession()).uniqueResult();
		pager.setTotal((int)total);
		List<?> list = criteria.setProjection(null).getExecutableCriteria(getSession())
				.setFirstResult((page - 1)* pageSize)
				.setMaxResults(pageSize)
				.list();
		pager.setData(list);
		
		return pager;
	}

	@Override
	public Object findObj(String sql) {
		return getSession().createQuery(sql).uniqueResult();
	}

	@Override
	public Session getSession() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession();
	}

}
