
var str="최고 관리자";
var str1="하위 관리자";

var managerDeleteId = "";
var managerModifyId = "";

$(document).ready(function() {
	$('#deleteManager').on('show.bs.modal', function(event) {
		managerDeleteId = $(event.relatedTarget).data('delid');
	});
	$('#modifyManager').on('show.bs.modal', function(event) {
		var managerModifyId = $(event.relatedTarget).data('modifyid');
		var managerModifyEmail = $(event.relatedTarget).data('modifyemail');
		var managerModifyPass = $(event.relatedTarget).data('modifypass');
		var managerModifyName = $(event.relatedTarget).data('modifyname');
		var managerModifyPosition = $(event.relatedTarget).data('modifyposition');	
		$('.modifyManagerIdInput').val(managerModifyId);
		$('.modifyManagerEmailInput').val(managerModifyEmail);
		$('.modifyManagerPassInput').val(managerModifyPass);	
		$('.modifyManagerNameInput').val(managerModifyName);
		$('.modifyManagerPositionInput').val(managerModifyPosition);
	});
});


//관리자 insert 부분
function acyncManagerInsert(url) {
	var position=$('#manager_position').text();
	var $form = $('#insertManagerForm').serialize(); //form데이터 직렬화
	
	if(str==position){
	//최고 관리자인 경우에만 ajax통신 시도
		$.ajax({
			url : url,
			type : "POST",
			data : $form,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("해당 관리자가 추가되었습니다.");
					$('#exampleModal').modal('hide'); //모달 창 닫기
					$("#insertManagerForm")[0].reset(); //입력된 form값 삭제
					location.href="manager.ado";
				} else {
					alert("[Error] 관리자 추가 오류");
				}
			},
			error : function() {
				alert("error");
			}
			
		});
		
	}else{
		$('#exampleModal').modal('hide');
		$("#insertManagerForm")[0].reset();
		alert("권한이 없습니다.");
	}
}



	//관리자 수정 부분
function acyncManagerModify(url) {
	   var position=$('#manager_position').text();
	   var $form = $('#modifyManagerForm').serialize(); //수정 form데이터 직렬화
	   
	   if(str1!=position){
	   //최고,중간인 경우에만 ajax통신 시도
	      $.ajax({
	         url : url,
	         type : "POST",
	         data : $form,
	         dataType : "json",
	         contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	         success : function(data) {
	            if (data == 1) {
	               alert("해당 관리자가 수정되었습니다.");
	               $('#modifyManager').modal('hide'); //모달 창 닫기
	               $("#modifyManagerForm")[0].reset(); //입력된 form값 삭제
					location.href="manager.ado";
	            } else {
	               alert("[Error] 관리자 수정 오류");
	            }
	         },
	         error : function() {
	            alert("error");
	         }
	         
	      });
	      
	   }else{
	      $('#modifyManager').modal('hide');
	      $("#modifyManagerForm")[0].reset();
	      alert("권한이 없습니다.");
	   }
	}

function acyncManagerDelete(url) {
	var position=$('#manager_position').text();
	var id = {
			"id" : managerDeleteId
		};
	
	if(str1!=position){
		$.ajax({
			url : url,
			type : "POST",
			data : id,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("해당 관리자가 삭제되었습니다.");
					location.href="manager.ado";
				} else {
					alert("[Error] 관리자 삭제 오류");
				}
			},
			error : function() {
				alert("error");
			}
		});
	}else{
	      alert("권한이 없습니다.");
	      $('#deleteManager').modal('hide');
	}
}




