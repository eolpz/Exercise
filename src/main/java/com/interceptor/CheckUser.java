package com.interceptor;


import com.hq.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class CheckUser extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		 User user = (User) ActionContext.getContext().getSession().get("user");
	//String username = (String) invocation.getInvocationContext().getSession().get("username") ;
	if(user == null){
		ActionContext.getContext().put("msg", "用户名为空");
		return "input";
	}
	return invocation.invoke();	
	}

}
