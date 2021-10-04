
var memberDeleteEmail = "";

$(document).ready(function() {
	$('#deleteMember').on('show.bs.modal', function(event) {
		memberDeleteEmail = $(event.relatedTarget).data('delemail');
	});

});


function acyncMemberInsert(url) {
	var $form = $('#insertMemberForm').serialize();
	$.ajax({
		url : url,
		type : "POST",
		data : $form,
		dataType : "json",
		success : function(data) {
			if (data == 1) {
				alert("해당 회원이 추가되었습니다.");
				location.href="member.ado";
			} else {
				alert("[Error] 회원 추가 오류");
			}
		},
		error : function() {
			alert("회원 추가 오류");
		}
	});
}



function acyncMemberDelete(url) {

	var email = {
			"email" : memberDeleteEmail
		};
	$.ajax({
		url : url,
		type : "POST",
		data : email,
		dataType : "json",
		success : function(data) {
			if (data == 1) {
				alert("해당 회원 삭제되었습니다.");
				location.href="member.ado";
			} else {
				alert("[Error] 회원 삭제 오류");
			}
		},
		error : function() {
			alert("error");
		}
	});
	
}


function acyncMemberModify(url) {
	var $form = $('#modifyMemberForm').serialize();
	$.ajax({
		url : url,
		type : "POST",
		data : $form,
		dataType : "json",
		success : function(data) {
			if (data == 1) {
				alert("해당 회원이 수정되었습니다.");
				location.href="member.ado";
			} else {
				alert("[Error] 회원 수정 오류");
			}
		},
		error : function() {
			alert("회원 수정 오류");
		}
	});
}
