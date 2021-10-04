
var delecontent_id = "";

$(document).ready(function(){
	$('#deleteContent').on('show.bs.modal', function(event) {
		delecontent_id = $(event.relatedTarget).data('content_id');
	});
	
	   $('.multi_select').selectpicker(); //부트스트랩 셀렉트 사용 등록
	
 });

//콘텐츠 추가 부분
 function acyncContentInsert(url) {
var category = $('#category_name').text();
	var $form = $('#insertContentForm').serialize(); //form데이터 직렬화	
		$.ajax({
			url : url,
			type : "POST",
			data : $form,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("해당 "+category+"이(가) 추가되었습니다.");
					location.href="content.ado?category_name="+category;
				} else {
					alert("[Error]"+category+"추가 오류");
				}
			},
			error : function() {
				alert("error");
			}
			
		});
		
	
}



// 콘텐츠 수정 부분
function acyncContentModify(url) {
	   var category = $('#category_name').text();
	   var $form = $('#insertContentForm').serialize(); //수정 form데이터 직렬화	   
      $.ajax({
         url : url,
         type : "POST",
         data : $form,
         dataType : "json",
         contentType: "application/x-www-form-urlencoded; charset=UTF-8",
         success : function(data) {
            if (data == 1) {
				alert("해당 "+category+"이(가) 수정되었습니다.");
				location.href="content.ado?category_name="+category;
            } else {
               alert("[Error] "+category+" 수정 오류");
            }
         },
         error : function() {
            alert("error");
         }
         
      });
      
}


// 콘텐츠삭제 부분
function acyncContentDelete(url) {
    var category = $('#category_name').text();
	var content_id = {
			"content_id" : delecontent_id
		};

		$.ajax({
			url : url,
			type : "POST",
			data : content_id,
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("해당 "+category+"이(가) 삭제되었습니다.");
					location.href="content.ado?category_name="+category;
				} else {
					alert("[Error] "+category+" 삭제 오류");
				}
			},
			error : function() {
				alert("error");
			}
		});
	
}