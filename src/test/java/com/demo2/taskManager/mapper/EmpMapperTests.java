package com.demo2.taskManager.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.demo2.taskManager.board.domain.EmpVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class EmpMapperTests {

	@Setter(onMethod_ = @Autowired)
	private EmpMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getEmps().forEach(board -> log.info(board));
	}
	
	@Test
	public void testDelete() {
		log.info("DELETE COUNT: "+ 	mapper.deleteEmp("id4"));
	}
	
	@Test
	public void testUpdate() {
		EmpVO emp = new EmpVO("id1","민수_수정", "01052218221", "task2");
		log.info("UPDATE COUNT: "+ 	mapper.updateEmp(emp));
	}
	
	@Test
	public void testAdd() {
		EmpVO emp = new EmpVO("id8", "지은", "01022138873","task4");
		log.info("생성된 직원아이디:" + emp.getEmpno());
	}
	
}
