
function validacion (){
	
	var miisbn = document.getElementById("isbn");
	if(miisbn.value==""){
		alert("Error isbn no puede estar vacio");
		miisbn.style.background='#ffdddd';
	}else{
		miisbn.style.background='#ffffff';
		}
	
}