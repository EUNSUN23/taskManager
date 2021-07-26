package com.demo2.taskManager.mapper;

import java.util.List;

import com.demo2.taskManager.board.domain.EmpVO;

public interface EmpMapper {
	//@Select("select * from tbl_emp")
	public List<EmpVO> getEmps();

	public void addEmp(EmpVO emp);
	
	public int deleteEmp(String empno);
	
	public int updateEmp(EmpVO emp);

}
