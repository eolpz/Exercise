package com.hq.service.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.query.Query;

import com.hq.model.Post;
import com.hq.service.BaseServiceSupport;
import com.hq.service.PostService;

public class PostServiceImpl extends BaseServiceSupport<Post> implements PostService {

	@Override
	public List<Post> getByDepId(Serializable depId) {
		Query<Post>  query = baseDao.getSession().createQuery("select p from Post p where depId=:did");
		query.setParameter("did", depId);
		return query.list();
	}

	
}
