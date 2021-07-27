			<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			
			<c:forEach var="emp" items="${employeeData}">
				<div id="accordion">
					<div class="card">
						<div class="emp-delete-container">
							<input type="checkbox" name="empNo" value="${emp.empno}"
								class="deleteCheck" id="empNo" /> <label for="#empNo"
								class="empNoSelect">선택</label>
						</div>
						<!-- 아코디언 헤더  start -->
						<div class="card-header">
							<a class="card-link list-group-item list-group-item-action"
								data-toggle="collapse" href="#${emp.empno}"> ${emp.name}
							</a>

						</div>
						<!-- 아코디언 헤더  end -->
						<!-- 아코디언 바디 start -->
						<div id="${emp.empno}" class="collapse" data-parent="#accordion">
							<div class="card-body">
								<!-- 사원 아이디, 연락처 정보 start-->
								<div class="emp-info">
									<div>
										<span><strong>사원 아이디 :</strong> ${emp.empno}</span><strong>연락처
											: </strong> ${emp.phone}<span></span>
									</div>


								</div>
								<!-- 사원 아이디, 연락처 정보 end-->
								<!-- 사원 업무 todos start -->
								<div class="emp-task">
									<h4>담당 업무 - ${emp.task}</h4>
									<!-- 작업목록 editor start -->

									<div class="todoTool">
										<div class="editTodoBtn" title="${emp.empno}">
											작업 목록 editor <span> <svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-caret-right-fill"
													viewBox="0 0 16 16">
  <path
														d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z" />
</svg>
											</span>
										</div>

									</div>
									<!-- 작업목록 editor end -->
									<!-- 작업목록 리스트 start -->
									<!-- 작업목록 리스트 end -->
								</div>
								<!-- 사원 업무 todos end-->
							</div>
						</div>
						<!-- 아코디언 바디 end -->
					</div>


				</div>
			</c:forEach>