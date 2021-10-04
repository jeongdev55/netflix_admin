var manageDeleteId = "";
var manageModifyId = "";
var controllergo="";
var controllerUrl="";
var manageName="";

$(document).ready(function() {
	$('#insertManage').on('show.bs.modal', function(event) {
		manageName=$(event.relatedTarget).data('name');
		controllergo=$(event.relatedTarget).data('manageurl');
		controllerUrl=controllergo+".ado";
	});
	
	$('#deleteManage').on('show.bs.modal', function(event) {
		manageDeleteId = $(event.relatedTarget).data('delid');
		manageName=$(event.relatedTarget).data('name');
		controllergo=$(event.relatedTarget).data('manageurl');
		controllerUrl=controllergo+".ado";

	});
	$('#modifyManage').on('show.bs.modal', function(event) {
		var manageModifyId = $(event.relatedTarget).data('modifyid');
		var manageModifyName = $(event.relatedTarget).data('modifyname');
		
		manageName=$(event.relatedTarget).data('name');
		controllergo=$(event.relatedTarget).data('manageurl');
		controllerUrl=controllergo+".ado";


		$('.modifyManageIdInput').val(manageModifyId);
		$('.modifyManageNameInput').val(manageModifyName);

	});
});


//insert 부분
function acyncManageInsert(url) {
	var $form = $('#insertManageForm').serialize(); //form데이터 직렬화	
		$.ajax({
			url : url,
			type : "POST",
			data : $form,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("해당"+manageName+"가 추가되었습니다.");
					$('#insertManage').modal('hide'); //모달 창 닫기
					$("#insertManageForm")[0].reset(); //입력된 form값 삭제
					location.href=controllerUrl;
				} else {
					alert("[Error] "+manageName+" 추가 오류");
				}
			},
			error : function() {
				alert("error");
			}
			
		});
		
	
}



	//수정 부분
function acyncManageModify(url) {
	   var $form = $('#modifyManageForm').serialize(); //수정 form데이터 직렬화	   
	      $.ajax({
	         url : url,
	         type : "POST",
	         data : $form,
	         dataType : "json",
	         contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	         success : function(data) {
	            if (data == 1) {
	               alert("해당"+manageName+"가 수정되었습니다.");
	               $('#modifyManage').modal('hide'); //모달 창 닫기
	               $("#modifyManageForm")[0].reset(); //입력된 form값 삭제
	               location.href=controllerUrl;
	            } else {
	               alert("[Error] "+manageName+" 수정 오류");
	            }
	         },
	         error : function() {
	            alert("error");
	         }
	         
	      });
	      
	}

// 삭제 부분
function acyncManageDelete(url) {
	var id = {
			"id" : manageDeleteId
		};

		$.ajax({
			url : url,
			type : "POST",
			data : id,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("해당 "+manageName+"가 삭제되었습니다.");
					location.href=controllerUrl;
				} else {
					alert("[Error] "+manageName+" 삭제 오류");
				}
			},
			error : function() {
				alert("error");
			}
		});
	
}