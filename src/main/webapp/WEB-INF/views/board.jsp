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
			<h3>팀 ABC</h3>
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
			<button type="submit" id="submitDelete"><strong>선택한 멤버 삭제</strong></button>
			<c:forEach var="emp" items="${employeeData}">
				<div id="accordion">
					<div class="card">
						<div class="emp-delete-container">
							<input type="checkbox" name="empNo" value="${emp.key}"
								class="deleteCheck" id="empNo"/>
							<label for="#empNo" class="empNoSelect">선택</label>
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
										<span><strong>사원 아이디 :</strong> ${emp.key}</span><strong>연락처 : </strong> ${emp.value.phone}<span></span>
									</div>


								</div>
								<div class="emp-task">
									<h4>담당 업무 - ${emp.value.task}</h4>
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