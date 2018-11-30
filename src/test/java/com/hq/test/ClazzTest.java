package com.hq.test;

import java.util.Date;
import java.util.List;

import javax.print.attribute.standard.PageRanges;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hq.model.Clazz;
import com.hq.model.Course;
import com.hq.service.ClazzService;
import com.hq.service.CourseService;
import com.hq.util.Pagination;

public class ClazzTest {
	@Test
	public void test4(){
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		ClazzService cla = context.getBean("clazzService",ClazzService.class);
		Pagination p = cla.getPage(1, 3);
		System.out.println(p.getData());
		System.out.println(p.getPage());
		System.out.println(p.getTotal());
		//List<Clazz> list = cla.getAll();
		
	}
	@Test
	public void test3(){
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		CourseService s = context.getBean("courseService",CourseService.class);
		ClazzService cla = context.getBean("clazzService",ClazzService.class);
		Clazz c = null;
		Clazz c1 = null;
		Clazz c2 = null;
		c = cla.getById(1);
		c1 = cla.getById(2);
		c2 = cla.getById(3);
		
		Course a = null;
		Course a1 = null;
		a= s.getById(1);
		a1= s.getById(2);
		c.setCourse(a);
		c1.setCourse(a1);
		c2.setCourse(a);
		/*cla.save(c);
		cla.save(c1);
		cla.save(c2);*/
		//System.out.println(c);
		System.out.println(c);
		
		
	}
	
	@Test
	public void test2(){
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		Course c1 = new Course(null, 18000d, 480, "基础班", "基础班，为就业班做准备");
		Course c2 = new Course(null, 18000d, 480, "就业班", "就业班，为找工作做准备");
		CourseService s = context.getBean("courseService",CourseService.class);
		s.save(c1);
		s.save(c2);
		System.out.println("已保寸");
	}
	@Test
	public void test1(){
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		Clazz c1 = new Clazz(null, "java班", new Date(), new Date(), "已开课", 20, 1, 0, 1, "贷款", "课表路径", "课表1", new Date());
		Clazz c2 = new Clazz(null, "html班", new Date(), new Date(), "未开课", 15, 0, 0, 1, "全款", "课表路径", "课表2", new Date());
		Clazz c3 = new Clazz(null, "大数据班", new Date(), new Date(), "已开课", 30, 1, 1, 1, "人未到", "课表路径", "课表3", new Date());
		ClazzService s = context.getBean("clazzService",ClazzService.class);
		s.save(c1);
		s.save(c2);
		s.save(c3);
		System.out.println("已保存");
	}

}
