package com.demo2.taskManager.board.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo2.taskManager.board.domain.EmpVO;
import com.demo2.taskManager.board.service.EmpService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board")
@Log4j
public class BoardController {
	
	@Setter(onMethod_ = {@Autowired})
	private EmpService service;

	@GetMapping("")
	public ModelAndView reqBoard(HttpServletRequest request) {
		
		ModelAndView mav1 = new ModelAndView();
		
		// 찾아야할 jsp 정보 세팅
		mav1.setViewName("board");
		
		// jsp에서 사용할 데이터 세팅 -> request에 담긴다.
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		mav1.addObject("employeeData", service.getEmps());
		mav1.addObject("id", id);

		return mav1;
	}
	
	
	@PostMapping("/delete-emp")
	public ModelAndView deleteBoard(HttpServletRequest request) {
		
		ModelAndView mavPost = new ModelAndView();
		HttpSession session = request.getSession();
		// 찾아야할 jsp 정보 세팅
		mavPost.setViewName("board");

		// jsp에서 사용할 데이터 세팅 -> request에 담긴다.

		
		String id = (String)session.getAttribute("id");
		String[] empNos = request.getParameterValues("empNo");
		
		for(int i = 0; i<empNos.length; i++) {
			service.deleteEmp(empNos[i]);
		}
		

		mavPost.addObject("employeeData", service.getEmps());
		mavPost.addObject("id",id);
		

		return mavPost;
	}
	
	
	@PostMapping("/add-emp")
	public ModelAndView addBoard(HttpServletRequest request) {
		
		ModelAndView mavPost = new ModelAndView();
		HttpSession session = request.getSession();
		// 찾아야할 jsp 정보 세팅
		mavPost.setViewName("board");

		// jsp에서 사용할 데이터 세팅 -> request에 담긴다.


		String empNo = request.getParameter("empNo");
		
		System.out.println("empNo/add-emp: "+empNo);
		
		
		String id = (String)session.getAttribute("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String task = request.getParameter("task");
		
		
		
		service.addEmp(new EmpVO(empNo, name, phone, task));

		mavPost.addObject("employeeData", service.getEmps());
		mavPost.addObject("id",id);

		return mavPost;
	}

	
	@PostMapping("/revise-info")
	public ModelAndView reviseEmpInfo(HttpServletRequest request) {
		
		ModelAndView mavPost = new ModelAndView();
		HttpSession session = request.getSession();

		// 찾아야할 jsp 정보 세팅
		mavPost.setViewName("board");

		// jsp에서 사용할 데이터 세팅 -> request에 담긴다.

		String empNo = request.getParameter("empNo");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String task = request.getParameter("task");
		String id = (String)session.getAttribute("id");

		if(service.updateEmp(new EmpVO(empNo, name, phone, task))) {
			log.info("수정 성공");
		}
			

		mavPost.addObject("employeeData", service.getEmps());
		mavPost.addObject("id", id);

		return mavPost;
	}
	
	
//	@PostMapping("/revise-todo")
//	public ModelAndView reviseEmpTodo(HttpServletRequest request) {
		
//		ModelAndView mavPost = new ModelAndView();
//		HttpSession session = request.getSession();
//		// 찾아야할 jsp 정보 세팅
//		mavPost.setViewName("board");
//
//		// jsp에서 사용할 데이터 세팅 -> request에 담긴다.
//
//
//
//		String empNo = request.getParameter("empNo");
//		int todoIdx = Integer.parseInt(request.getParameter("todoIdx"));
//		String todoText = request.getParameter("todoText");
//		String id = (String)session.getAttribute("id");
//
//		EmpDataUtil.reviseEmpTodo(empNo, todoIdx, todoText);
//
//		mavPost.addObject("employeeData", EmpDataUtil.empMap);
//		mavPost.addObject("id", id);
//		
//		return mavPost;
//	}
	
	
//	@PostMapping("/add-todo")
//	public ModelAndView addEmpTodo(HttpServletRequest request) {
		
//		ModelAndView mavPost = new ModelAndView();
//		HttpSession session = request.getSession();
//		// 찾아야할 jsp 정보 세팅
//		
//		String empNo = request.getParameter("empNo");
//		String id = (String)session.getAttribute("id");
//		String todoText = request.getParameter("todoText");
//		
//		EmpDataUtil.addEmpTodo(empNo, todoText);
//		
//		mavPost.addObject("employeeData", EmpDataUtil.empMap);
//		mavPost.addObject("id", id);
//		
//		mavPost.setViewName("board");
//
//		// jsp에서 사용할 데이터 세팅 -> request에 담긴다.
//		
//		return mavPost;
//		
//	}
	
	
//	@PostMapping("/delete-todo")
//	public ModelAndView deleteEmpTodo(HttpServletRequest request) {
//		
//		ModelAndView mavPost = new ModelAndView();
//		HttpSession session = request.getSession();
//		// 찾아야할 jsp 정보 세팅
//		
//		String empNo = request.getParameter("empNo");
//		String id = (String)session.getAttribute("id");
//		int todoIdx = Integer.parseInt(request.getParameter("todoIdx"));
//		
//		EmpDataUtil.deleteEmpTodo(empNo, todoIdx);
//		
//		mavPost.addObject("employeeData", EmpDataUtil.empMap);
//		mavPost.addObject("id", id);
//		
//		mavPost.setViewName("board");
//
//		// jsp에서 사용할 데이터 세팅 -> request에 담긴다.
//		
//		return mavPost;
//	}
	
}