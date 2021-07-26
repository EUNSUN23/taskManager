package com.demo2.taskManager.board.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.demo2.taskManager.board.service.EmpService;


import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class EmpServiceTests {

	@Setter(onMethod_ = {@Autowired})
	private EmpService service;
	
	@Test
	public void testGetEmps() {
		service.getEmps().forEach(emp -> log.info(emp));
	}
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testDelete() {
		log.info("delete result:"+ service.deleteEmp("id2"));
	}
}
