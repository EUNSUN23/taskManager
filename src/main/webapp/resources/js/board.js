'use strict';

const deleteEmp = document.querySelector(".deleteEmp");
const deleteContainer = document.querySelectorAll(".emp-delete-container");
const submitDelete = document.querySelector("#submitDelete");
const deleteChecker = document.querySelectorAll(".deleteCheck");
const empListHeader = document.querySelectorAll(".list-group-item");
const editTodoBtn = document.querySelectorAll(".editTodoBtn");
const editTodoModal = document.querySelector("#myModal-todoEditor");
const empBoard = document.querySelector("#emp-board");


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

function deleteEmps() {
	console.log("ajaxval:",$("#empBoard").val());
// $.ajax({
// async : true,
// type : 'POST',
// data: memberId,
// url: "/idCheck",
// dataType: "json",
// contentType: "application/json; charset=UTF-8",
// success: function(count) {
//                    
// },
// error: function(error) {
// alert("아이디를 입력해주세요.");
// }
// });
}



$("#submitDelete").click(function(e){
	e.preventDefault();
	
	var jsonObject = $("#emp-board").serialize();
	console.log("jsonObject",jsonObject);
	
	$.ajax({
  async : true, 
  type : 'POST', 
  data: {empNos: jsonObject},
  url: "board/delete-emp",
  dataType: "json",
  success: function(result) {    
// var tablebody = $("#accordion");
// tablebody.html("");
// var resultHtml;
// for (var i in result) {
// resultHtml += "<tr>"+
// "<td>"+result[i].user_id+"</td>"+
// "<td>"+result[i].username+"</td>"+
// "<td>"+result[i].email+"</td>"+
// "<td>"+result[i].created_on+"</td>"+
// "</tr>";
// }
//
// tablebody.html(resultHtml);
	  console.log("result:",result[0].empno);
  },
  error: function(error) {
      alert(error);
  }    
	})
})

//submitDelete.addEventListener("click", function(e){
//	e.preventDefault();
//
//	var params = jQuery("#emp-board").serializeObject(); 
//	
//	console.log("param",params);
//	
//	$.ajax({
//  async : true, 
//  type : 'POST', 
//  data: JSON.stringify(params),
//  url: "board/delete-emp",
//  dataType: "json",
//  success: function(result) {    
//// var tablebody = $("#accordion");
//// tablebody.html("");
//// var resultHtml;
//// for (var i in result) {
//// resultHtml += "<tr>"+
//// "<td>"+result[i].user_id+"</td>"+
//// "<td>"+result[i].username+"</td>"+
//// "<td>"+result[i].email+"</td>"+
//// "<td>"+result[i].created_on+"</td>"+
//// "</tr>";
//// }
////
//// tablebody.html(resultHtml);
//	  console.log("result:",result);
//  },
//  error: function(error) {
//      alert(error);
//  }        
//});
//});






