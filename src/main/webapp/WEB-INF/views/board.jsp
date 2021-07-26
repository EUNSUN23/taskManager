<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-sacle=1, shrink-to-fit=no">

<!-- Bootstrap css -->
<script src="<c:url value="/js/jquery/jquery-3.6.0.js"/>"></script>
<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/css/board.css"/>" rel="stylesheet">
<script src="<c:url value="/js/bootstrap/bootstrap.min.js"/>"></script>
<title>Insert title here</title>
</head>
<body>

	<!-- 멤버 추가 modal start-->
	<c:import url="./addEmpModal.jsp"></c:import>
	<!-- 멤버 추가 modal end-->


	<!-- 작업목록 editor modal start -->
	<c:import url="./editTodoModal.jsp"></c:import>
	<!-- 작업목록 editor modal end -->

	<div class="boardContainer container-fluid">

		<!-- 프로젝트 보드 header start -->
		<div>
			<span class="id">나 : <strong>${id}</strong></span>
			<h3>프로젝트ABC</h3>
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#myModal-empAdd">멤버 추가</button>
			<button type="button" class="deleteEmp btn btn-primary">멤버
				삭제</button>

		</div>
		<!-- 프로젝트 보드 header end -->
		<!-- 프로젝트 보드 body start -->
		<form action="${pageContext.request.contextPath}/board/delete-emp"
			method="post" id="emp-board">
			<!-- 멤버 삭제 버튼 start -->
			<button type="submit" id="submitDelete">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
  <path
						d="M13.485 1.431a1.473 1.473 0 0 1 2.104 2.062l-7.84 9.801a1.473 1.473 0 0 1-2.12.04L.431 8.138a1.473 1.473 0 0 1 2.084-2.083l4.111 4.112 6.82-8.69a.486.486 0 0 1 .04-.045z" />
</svg>
				<strong>선택한 멤버 삭제</strong>
			</button>
			<!-- 멤버 삭제 버튼 end -->
			<!-- 프로젝트 멤버 accordion start -->
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
			<!-- 프로젝트 멤버 accordion end -->
		</form>
		<!-- 프로젝트 보드 body end -->
	</div>

	<script src="<c:url value="/js/board.js"/>"></script>
</body>


<!-- 

	<span class="addTodoBtn"><svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="currentColor" class="bi bi-plus-circle-fill"
												viewBox="0 0 16 16">
  <path
													d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z" />
</svg></span> <span class="delTodoBtn"><svg xmlns="http://www.w3.org/2000/svg"
												width="16" height="16" fill="currentColor"
												class="bi bi-dash-circle-fill" viewBox="0 0 16 16">
  <path
													d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h7a.5.5 0 0 0 0-1h-7z" />
</svg></span> 

 -->

</html>