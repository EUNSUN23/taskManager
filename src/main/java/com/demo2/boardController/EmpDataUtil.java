package com.demo2.boardController;

import java.util.*;

public class EmpDataUtil {

	public static Map<String, Employee> empMap = new HashMap<>();
	public static List<String> ids = new ArrayList<>();


	static {
		setDefault();
	}

	public static void setDefault() {

		addEmployee("id3df1", "Mary", "01012342222", "��Ʈ1");
		addEmployee("idtrsa2","����", "01044342322", "��Ʈ2");
		addEmployee("idf2d3", "Susan", "01055332122", "��Ʈ1");
		addEmployee("idjej4", "�μ�", "01013225522", "��Ʈ4");
		addEmployee("idfwd5","����", "01012342222", "��Ʈ1");
		addEmployee("ids5a6", "����", "01044342322", "��Ʈ3");
		addEmployee("idttt7", "����", "01055332122", "��Ʈ5");
		addEmployee("idttts8","�ϳ�", "01013225522", "��Ʈ4");

	}

	/*------------ �߰� : ����,todo -------------- */

	public static void addEmployee(String empNo, String name, String phone, String task, String todo) {

		if(validateId(empNo)) {
			empMap.put(empNo, new Employee(empNo, name, phone, task, todo));
			ids.add(empNo);
		}else {
			System.out.println("�̹� �����ϴ� ���̵� �Դϴ�");
			return;
		}
			
		

	}

	public static void addEmployee(String empNo, String name, String phone, String task) {
		System.out.println("EmpDataUtil,empNo : "+empNo);
	
		if(validateId(empNo)) {
			empMap.put(empNo, new Employee(empNo, name, phone, task));
			ids.add(empNo);
		}else {
			System.out.println("�̹� �����ϴ� ���̵� �Դϴ�");
			return;
		}

	}
	
	
	public static void addEmpTodo(String empNo, String newTodo) {
		empMap.get(empNo).addTodo(newTodo);
	}

	/*------------ ����  ���� : info, todo  -------------- */

	public static void reviseEmpInf(String empNo, String name, String phone, String task) {
		empMap.get(empNo).reviseInfo(name, phone, task);
	}

	public static void reviseEmpTodo(String empNo, int idx, String newTodo) {
		empMap.get(empNo).reviseTodo(idx, newTodo);
	}

	/*------------ ���� : ����, todo -------------- */

	public static void deleteEmployee(String empNo) {
		empMap.remove(empNo);
	}
	
	public static void deleteEmpTodo(String empNo, int idx) {
		empMap.get(empNo).deleteTodo(idx);
	}

	/*------------ id �ߺ�üũ ------------- */

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
