const headerContainer = document.querySelector('.header_container');
window.addEventListener('scroll',
    function (e) {
        scroll_position = window.scrollY;
        if (scroll_position!=0) {
            //console.log("wheel down");
            headerContainer.style.background = 'black';
        }
        else {
            headerContainer.style.background = 'linear-gradient(to bottom, rgba(0, 0, 0, 0.7) 10%, rgba(0, 0, 0, 0))';
        }
    }
);

function mover(){
	var ubox = document.getElementById("user_tab_btn")
	ubox.style.display ='block';
}
function mout(){
	var ubox = document.getElementById("user_tab_btn")
	ubox.style.display ='none';
}
