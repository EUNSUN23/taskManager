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
	<div class="boardContainer container-fluid">

		<!-- header -->
		<div>
			<span class="id">나 : <strong>${id}</strong></span>
			<h3>프로젝트ABC</h3>
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#myModal-empAdd">멤버 추가</button>
			<button type="button" class="deleteEmp btn btn-primary">멤버
				삭제</button>

			<!-- 멤버 추가 modal -->
			<div class="modal" id="myModal-empAdd">
				<div class="modal-dialog">
					<div class="modal-content">
						<form action="${pageContext.request.contextPath}/board/add-emp"
							method="post">
							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">새 멤버 추가하기</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">

								<div class="form-group">
									<label for="empNo">아이디:</label> <input type="text" name="empNo"
										class="form-control" pattern="[a-zA-Z0-9]{6,8}" maxlength="8"
										placeholder="영소문자,숫자를 포함한  6~8자리 아이디를 입력하세요"
										title="영소문자,숫자를 포함한  6~8자리 아이디를 입력하세요" required id="empNo">
								</div>

								<div class="form-group">
									<label for="name">이름:</label> <input type="text" name="name"
										class="form-control" id="name">
								</div>
								<div class="form-group">
									<label for="phone">연락처:</label> <input type="text" name="phone"
										pattern="[0-9]{2,3}[0-9]{3,4}[0-9]{3,4}" maxlength="13"
										placeholder="-를 제외한  연락처를 입력하세요" title="-를 제외한  연락처를 입력하세요"
										required class="form-control" id="phone">
								</div>
								<div class="form-group">
									<label for="task">참여 파트:</label> <input type="text" name="task"
										class="form-control" id="task">
								</div>
							</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary">추가</button>
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- 멤버 아코디언 -->
		<form action="${pageContext.request.contextPath}/board/delete-emp"
			method="post" id="emp-board">
			<button type="submit" id="submitDelete">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
  <path
						d="M13.485 1.431a1.473 1.473 0 0 1 2.104 2.062l-7.84 9.801a1.473 1.473 0 0 1-2.12.04L.431 8.138a1.473 1.473 0 0 1 2.084-2.083l4.111 4.112 6.82-8.69a.486.486 0 0 1 .04-.045z" />
</svg>
				<strong>선택한 멤버 삭제</strong>
			</button>
			<c:forEach var="emp" items="${employeeData}">
				<div id="accordion">
					<div class="card">
						<div class="emp-delete-container">
							<input type="checkbox" name="empNo" value="${emp.key}"
								class="deleteCheck" id="empNo" /> <label for="#empNo"
								class="empNoSelect">선택</label>
						</div>
						<div class="card-header">
							<a class="card-link list-group-item list-group-item-action"
								data-toggle="collapse" href="#${emp.key}"> ${emp.value.name}
							</a>

						</div>
						<div id="${emp.key}" class="collapse" data-parent="#accordion">
							<div class="card-body">
								<div class="emp-info">
									<div>
										<span><strong>사원 아이디 :</strong> ${emp.key}</span><strong>연락처
											: </strong> ${emp.value.phone}<span></span>
									</div>


								</div>
								<div class="emp-task">
									<h4>담당 업무 - ${emp.value.task}</h4>
									<div class="todoTool">
									<strong>작업 목록</strong>
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
</svg></span> <span class="editTodoBtn"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="currentColor" class="bi bi-pencil-square"
												viewBox="0 0 16 16">
  <path
													d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
  <path fill-rule="evenodd"
													d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
</svg>
										</span>
									</div>

									<ul class="emp-todo">
										<c:forEach var="todo" items="${emp.value.todoList}">
											<li>${todo}</li>
										</c:forEach>
									</ul>
								</div>

							</div>
						</div>
					</div>


				</div>
			</c:forEach>
		</form>

	</div>

	<script src="<c:url value="/js/board.js"/>"></script>
</body>
</html>