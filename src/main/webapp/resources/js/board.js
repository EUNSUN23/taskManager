'use strict';

const deleteEmp = document.querySelector(".deleteEmp");
const deleteContainer = document.querySelectorAll(".emp-delete-container");
const submitDelete = document.querySelector("#submitDelete");
const deleteChecker = document.querySelectorAll(".deleteCheck");
const empListHeader = document.querySelectorAll(".list-group-item");
const editTodoBtn = document.querySelectorAll(".editTodoBtn");
const editTodoModal = document.querySelector("#myModal-todoEditor");


for(let j = 0; j<empListHeader.length; j++){
	const empHeader = empListHeader[j];
	empHeader.addEventListener("click",function(e){
		if(empHeader.classList.contains("selected")){
			empHeader.classList.remove("selected");
		}else{
			empHeader.classList.add("selected");
		}
	})
}




const initDeleteCheck = () => {
	for(let i = 0; i<deleteChecker.length; i++){
		deleteChecker[i].checked = false;
	}
	
}

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
		initDeleteCheck();
	}

});





