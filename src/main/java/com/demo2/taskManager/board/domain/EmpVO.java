package com.demo2.taskManager.board.domain;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("empVO")
@Data
public class EmpVO {
private String empno;
private String name;
private String phone;
private String task;

public EmpVO() {}

public EmpVO(String empno, String name, String phone, String task) {

	this.empno = empno;
	this.name = name;
	this.phone = phone;
	this.task = task;
}





}

