<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
