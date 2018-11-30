package com.hq.test;

import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hq.model.Refer;
import com.hq.service.ClazzService;
import com.hq.service.ReferService;
import com.hq.service.StaffService;

public class ZixunTest {
	@Test
	public void test1(){
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		Refer r1 = new Refer(null, "张三", "18888888", "123456", new Date(), "一级", "学校合作","准备报名", "备注");
		Refer r2 = new Refer(null, "李四", "18777777", "987456", new Date(), "二级", "社会合作", "首次咨询", "备注");
		ReferService r = context.getBean("referService",ReferService.class);
		
		ClazzService cla = context.getBean("clazzService",ClazzService.class);
		StaffService sta = context.getBean("staffService",StaffService.class);
		r1.setClazz(cla.getById(1));
		r1.setStaff(sta.getById(1));
		r2.setClazz(cla.getById(2));
		r2.setStaff(sta.getById(2));
		r.save(r1);
		r.save(r2);
		System.out.println("已完成");
		
		
	}
}
