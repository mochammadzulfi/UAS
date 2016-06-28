$(document).ready(function(){
		var Modul = $("section#section-login");
			Modul.find("#btnlogin").click(function(){
					//validlogin();
					alert("btnProses");
					});
		 });


function validlogin(){

/*var uname = $('#username').val();
var password = $('#password').val();

	$.ajax({
		type 	: "POST",
		url		: "halaman/login/login_prosses.php",
		data	: {uname2:uname, password2:password},
		cache	: false,
		success	: function(result){
				alert(result);
				if(result=='berhasil'){
					window.location = 'index.php?page=home';
					}else{
					alert("username atau password anda salah");
					}
				}
			});
}
*/