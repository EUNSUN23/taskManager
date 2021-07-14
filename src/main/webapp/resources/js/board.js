'use strict';

const deleteEmp = document.querySelector(".deleteEmp");
const deleteContainer = document.querySelectorAll(".emp-delete-container");
const submitDelete = document.querySelector("#submitDelete");

deleteEmp.addEventListener("click", function(e) {

	if (deleteEmp.innerHTML === "멤버 삭제") {
		for (let i = 0; i < deleteContainer.length; i++) {
			deleteContainer[i].style.display = "block";
		}
		deleteEmp.innerHTML = "취소하기"
		submitDelete.style.display = "block";
	} else {
		for (let i = 0; i < deleteContainer.length; i++) {
			deleteContainer[i].style.display = "none";
		}
		deleteEmp.innerHTML = "멤버 삭제"
		submitDelete.style.display = "none";

	}

});