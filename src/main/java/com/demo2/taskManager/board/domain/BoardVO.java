package com.demo2.taskManager.board.domain;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("boardVO")
@Data
public class BoardVO {
private String empno;
private String name;
private String phone;
private String task;


public BoardVO(String empno, String name, String phone, String task) {
	super();
	this.empno = empno;
	this.name = name;
	this.phone = phone;
	this.task = task;
}





}

