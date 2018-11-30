package com.hq.service;

import java.io.Serializable;
import java.util.List;

import com.hq.model.Post;

public interface PostService extends BaseService<Post> {
	
	public List<Post> getByDepId(Serializable depId);

}
