//티켓 스크립트
var delTicket_id="";
var modifyTicket_id=""

$(document).ready(function() {	
	$('#deleteTicket').on('show.bs.modal', function(event) {
		delTicket_id = $(event.relatedTarget).data('delid');
	});
	$('#modifyTicket').on('show.bs.modal', function(event) {
		modifyTicket_id = $(event.relatedTarget).data('modifyid');
		var modifyname =$(event.relatedTarget).data('modifyname');
		var modifylimited =$(event.relatedTarget).data('modifylimited');
		var modifyprice =$(event.relatedTarget).data('modifyprice');
		var modifycontent =$(event.relatedTarget).data('modifycontent');
		var modifyis_main =$(event.relatedTarget).data('modifyis_main');
		
		$('.mofifyidinput').val(modifyTicket_id);
		$('.modifynameinput').val(modifyname);
		$('.modifylimitedinput').val(modifylimited);
		$('.modifypriceinput').val(modifyprice);
		$('.modifycontentinput').val(modifycontent);
		$('.modifyis_maininput').val(modifyis_main);
		$('.modifyis_maininput').text(modifyis_main);
		

	});
});


//insert 부분
function acyncTicketInsert(url) {
	var $form = $('#insertTicketForm').serialize(); //form데이터 직렬화	
		$.ajax({
			url : url,
			type : "POST",
			data : $form,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("해당 이용권이 추가되었습니다.");
		            location.href="ticket.ado";
				} else {
					alert("[Error] 이용권 추가 오류");
				}
			},
			error : function() {
				alert("error");
			}
			
		});
		
	
}



	//수정 부분
function acyncTicketModify(url) {
	   var $form = $('#modifyTicketForm').serialize(); //수정 form데이터 직렬화	   
	      $.ajax({
	         url : url,
	         type : "POST",
	         data : $form,
	         dataType : "json",
	         contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	         success : function(data) {
	            if (data == 1) {
	               alert("해당 이용권이 수정되었습니다.");
	               location.href="ticket.ado";
	            } else {
	               alert("[Error] 이용권 수정 오류");
	            }
	         },
	         error : function() {
	            alert("error");
	         }
	         
	      });
	      
	}

// 삭제 부분
function acyncTicketDelete(url) {
	var ticket_id = {
			"ticket_id" : delTicket_id
		};

		$.ajax({
			url : url,
			type : "POST",
			data : ticket_id,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
		               alert("해당 이용권이 삭제되었습니다.");
		               location.href="ticket.ado";
				} else {
		               alert("[Error] 이용권 삭제 오류");
				}
			},
			error : function() {
				alert("error");
			}
		});
	
}