package com.demo2.boardController;

import java.util.*;

public class EmpDataUtil {

	public static Map<String, Employee> empMap = new HashMap<>();
	public static List<String> ids = new ArrayList<>();


	static {
		setDefault();
	}

	public static void setDefault() {

		addEmployee("id3df1", "Mary", "01012342222", "파트1");
		addEmployee("idtrsa2","수지", "01044342322", "파트2");
		addEmployee("idf2d3", "Susan", "01055332122", "파트1");
		addEmployee("idjej4", "민수", "01013225522", "파트4");
		addEmployee("idfwd5","지영", "01012342222", "파트1");
		addEmployee("ids5a6", "다혜", "01044342322", "파트3");
		addEmployee("idttt7", "은진", "01055332122", "파트5");
		addEmployee("idttts8","하나", "01013225522", "파트4");

	}

	/*------------ 추가 : 직원,todo -------------- */

	public static void addEmployee(String empNo, String name, String phone, String task, String todo) {

		if(validateId(empNo)) {
			empMap.put(empNo, new Employee(empNo, name, phone, task, todo));
			ids.add(empNo);
		}else {
			System.out.println("이미 존재하는 아이디 입니다");
			return;
		}
			
		

	}

	public static void addEmployee(String empNo, String name, String phone, String task) {
		System.out.println("EmpDataUtil,empNo : "+empNo);
	
		if(validateId(empNo)) {
			empMap.put(empNo, new Employee(empNo, name, phone, task));
			ids.add(empNo);
		}else {
			System.out.println("이미 존재하는 아이디 입니다");
			return;
		}

	}
	
	
	public static void addEmpTodo(String empNo, String newTodo) {
		empMap.get(empNo).addTodo(newTodo);
	}

	/*------------ 직원  수정 : info, todo  -------------- */

	public static void reviseEmpInf(String empNo, String name, String phone, String task) {
		empMap.get(empNo).reviseInfo(name, phone, task);
	}

	public static void reviseEmpTodo(String empNo, int idx, String newTodo) {
		empMap.get(empNo).reviseTodo(idx, newTodo);
	}

	/*------------ 삭제 : 직원, todo -------------- */

	public static void deleteEmployee(String empNo) {
		empMap.remove(empNo);
	}
	
	public static void deleteEmpTodo(String empNo, int idx) {
		empMap.get(empNo).deleteTodo(idx);
	}

	/*------------ id 중복체크 ------------- */

	public static boolean validateId(String id) {
		
		boolean pass = true; 
		
		System.out.println("ids :"+ ids.toString());
		System.out.println("indexof id : "+ ids.indexOf(id));
		
		
		
		
		
		if(ids.indexOf(id)>=0) {
			pass = false;
		}
		
		
		
		return pass;
	}


}
