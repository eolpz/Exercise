package com.hq.action;

import java.util.List;

import com.hq.model.Clazz;
import com.hq.model.Course;
import com.hq.model.Department;
import com.hq.model.Graduate;
import com.hq.model.Post;
import com.hq.model.Refer;
import com.hq.model.Student;
import com.opensymphony.xwork2.ActionContext;

public class MainAction extends BaseAction {
	

	public void main(){
		System.out.println("main处理");
		//存入session作用域
		List<Department> depts = departmentService.getAll();
		ActionContext.getContext().getSession().put("depts", depts);
		//存入session作用域
		List<Post> posts = postService.getByDepId(1);
		ActionContext.getContext().getSession().put("posts", posts);
		//存入session作用域
		List<Clazz> clazzs = clazzService.getAll();
		ActionContext.getContext().getSession().put("clazzs", clazzs);
		//存入session作用域
		List<Course> courses = courseService.getAll();
		ActionContext.getContext().getSession().put("courses", courses);
		//存入session作用域
		List<Refer> refers = referService.getAll();
		ActionContext.getContext().getSession().put("refers", refers);
		
		//存入session作用域
		List<Student> students = studentService.getAll();
		ActionContext.getContext().getSession().put("students", students);
		//存入session作用域
		List<Graduate> graduates = graduateService.getAll();
		ActionContext.getContext().put("graduates", graduates);
	}
	
	/*public String main(){
		System.out.println("main处理");
		//查询所有部门
		List<Department> depts = departmentService.getAll();
		//存入session作用域
		ActionContext.getContext().getSession().put("depts", depts);
		List<Post> posts = postService.getByDepId(1);
		ActionContext.getContext().getSession().put("posts", posts);

		List<Clazz> clazzs = clazzService.getAll();
		ActionContext.getContext().getSession().put("clazzs", clazzs);
		return SUCCESS;
		
		
	}*/

}
