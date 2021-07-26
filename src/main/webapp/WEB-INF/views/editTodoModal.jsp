<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="modal" id="myModal-todoEditor">
				<div class="modal-dialog">
					<div class="modal-content">
						<form action="${pageContext.request.contextPath}/board/add-todo"
							method="post">
							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">작억목록 editor</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">
							
								<label for="todoText"></label>
								<textarea id="todoText" name="todoText" rows="4" cols="50"></textarea>
								<input type="submit" value="추가"/>
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