package com.demo2.taskManager.board.service;

import java.util.List;
import com.demo2.taskManager.board.domain.EmpVO;

public interface EmpService {
	
public List<EmpVO> getEmps();

public boolean deleteEmp(String empno);

public void addEmp(EmpVO emp);

public boolean updateEmp(EmpVO emp);

}
