package com.demo2.boardController;

import java.util.*;

public class Employee {

	private String key;
	private String name;
	private String phone;
	private String task;
	private List<String> todoList = new ArrayList<>();

	public Employee(String key,String name, String phone, String task, String todo) {
		super();
		this.key =  key;
		this.name = name;
		this.phone = phone;
		this.task = task;
		todoList.add(todo);		
	}
	
	public Employee(String key,String name, String phone, String task) {
		super();	
		this.key = key;
		this.name = name;
		this.phone = phone;
		this.task = task;	
	}

/*------- getter -------- */
	
	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getTask() {
		return task;
	}
	
	public String getKey() {
		return key;
	}
	
	public List<String> getTodoList() {
		return todoList;
	}


	/*------- setter -------- */

	public void setName(String name) {
		this.name = name;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public void setTask(String task) {
		this.task = task;
	}

/* ----------------------  revise: 기존 info,todo 수정 ------------------------------- */
	
	public void reviseInfo(String name, String phone, String task) {
		setName(name);
		setPhone(phone);
		setTask(task);
	}
	
	public void reviseTodo(int idx, String newTodo) {
		todoList.set(idx,  newTodo);
		
	}
	
/*--------------- deleteTodo : todoList에서 todo 삭제*/
	
	public void deleteTodo(int idx) {
		todoList.remove(idx);
	}
	
	
/*-------------  addTodo : todoList에 todo 추가*/

	public void addTodo(String todo) {
		todoList.add(todo);
	}


}
