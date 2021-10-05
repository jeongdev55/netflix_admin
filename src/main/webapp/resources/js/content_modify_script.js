
//감독 최대 2명
//배우 최대 3명
//장르 최대 3개
//특징 최대 3개 로 설정해서 들어간다는 조건으로 진행

$(document).ready(function(){
	
	//여러개일 경우 (콤마 , )로 구분하여 배열에 담음
	var arr_genre=genre.split(','); 
	var arr_actor=actor.split(',');
	var arr_director=director.split(',');
	var arr_characteristic=characteristic.split(',');

	
	//장르 값 전달
	if(arr_genre.lenght==1){
		$('.genre_select').selectpicker('val', genre); //값이 하나일 경우에는 그대로 전달
		}else{
				$('.genre_select').selectpicker('val', [arr_genre[0],arr_genre[1],arr_genre[2]]);
			}
	//배우 값 전달
	if(arr_actor.lenght==1){
		$('.actor_select').selectpicker('val', actor); 
		}else{
				$('.actor_select').selectpicker('val', [arr_actor[0],arr_actor[1],arr_actor[2]]);
			}
	
	//감독 값 전달
	if(arr_director.lenght==1){
		$('.director_selecter').selectpicker('val', director);
		}else{
				$('.director_selecter').selectpicker('val', [arr_director[0],arr_director[1]]);
			}
	
	//특징 값 전달
	if(arr_characteristic.lenght==1){
		$('.characteristic_select').selectpicker('val', characteristic);
		}else{
				$('.characteristic_select').selectpicker('val', [arr_characteristic[0],arr_characteristic[1],arr_characteristic[2]]);
			}
		
		
	//selectpicker 새로 적용
		$('.genre_select').selectpicker('refresh');
		$('.director_selecter').selectpicker('refresh');
		$('.actor_select').selectpicker('refresh');
		$('.characteristic_select').selectpicker('refresh');
 });