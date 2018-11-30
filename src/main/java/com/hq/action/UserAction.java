package com.hq.action;

import java.util.List;

import com.hq.model.User;
import com.hq.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	
		private User user = new User();
		
		//依赖对象
		private UserService UserService;
		private MainAction mainAction;
		
		public void setMainAction(MainAction mainAction) {
			this.mainAction = mainAction;
		}
		public void setUserService(UserService UserService) {
			this.UserService = UserService;
		}

		public String login() {
			
			List<User> list = UserService.getUsers();
			System.out.println(list);
			if(list.contains(user)){
				ActionContext.getContext().getSession().put("user", user);
				mainAction.main();
				return SUCCESS;
			}
			ActionContext.getContext().put("msg", "用户名密码错误");
			return INPUT;
		}

		@Override
		public User getModel() {
			// TODO Auto-generated method stub
			return user;
		}

	

}
