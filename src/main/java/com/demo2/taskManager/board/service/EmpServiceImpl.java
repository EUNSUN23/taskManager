package com.demo2.taskManager.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo2.taskManager.board.domain.EmpVO;
import com.demo2.taskManager.mapper.EmpMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class EmpServiceImpl implements EmpService {

	@Setter(onMethod_ = @Autowired)
	private EmpMapper mapper;

	@Override
	public List<EmpVO> getEmps() {
		// TODO Auto-generated method stub
		log.info("getEmps..................");
		return mapper.getEmps();
	}

	@Override
	public boolean deleteEmp(String empno) {
		// TODO Auto-generated method stub
		log.info("delete.........." + empno);

		return mapper.deleteEmp(empno) == 1;
	}

	@Override
	public void addEmp(EmpVO emp) {
		// TODO Auto-generated method stub
		log.info("add....." + emp);
		mapper.addEmp(emp);
	}

	@Override
	public boolean updateEmp(EmpVO emp) {
		// TODO Auto-generated method stub
		log.info("update.........." + emp);

		return mapper.updateEmp(emp) == 1;
	}

}
