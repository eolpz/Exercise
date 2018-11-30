package com.hq.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hq.dao.BaseDao;
import com.hq.dao.DepartmentDao;
import com.hq.model.Department;
import com.hq.model.Post;


public class EmpServiceTest {
	
	@Test
	public void test5(){
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		Department d = null;
		DepartmentDao depDao = context.getBean("departmentDao",DepartmentDao.class);
		List<Department> list = depDao.findAll(Department.class);
		System.out.println(list);
		
	}
	@Test
	public void test4(){
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		Department d = null;
		DepartmentDao depDao = context.getBean("departmentDao",DepartmentDao.class);
		d = depDao.findById(Department.class, 5);
		
		System.out.println(d);
		
	}
	@Test
	public void test3(){
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		Department d = new Department();
		d.setDepName("董事会");
		DepartmentDao depDao = context.getBean("departmentDao",DepartmentDao.class);
		depDao.save(d);
		
		System.out.println("");
		
	}
	@Test
	public void test2(){
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		Post p = new Post();
		p.setPostName("CEO");
		p.setDepartment(new Department(4));
		BaseDao baseDao = context.getBean("baseDao",BaseDao.class);
		baseDao.save(p);
		
		System.out.println("");
		
	}
	@Test
	public void test1(){
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		Department d = new Department();
		d.setDepName("财务部");
		BaseDao baseDao = context.getBean("baseDao",BaseDao.class);
		baseDao.save(d);
		
		
		System.out.println("保存完成");
		
	}

}
