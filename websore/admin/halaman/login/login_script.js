// JavaScript Document
$(document).ready(function(){
	var Modul = $("section#section-login");			   
		Modul.find("#btnlogin").click(function(){	
			validlogin();	
		});
});



function validlogin(){
var Modul = $("section#section-login");

var uname		= Modul.find('#userid').val();
var password	= Modul.find('#password').val();
//alert(password);

	$.ajax({
		  type		: "POST",
		  dataType	: "json",
		  url		: "halaman/login/login_proses.php",
		  data		: {action:"login", uname2:uname, password2:password},
		  cache		: false,
		  success	: function(json){
			  	//alert(json);
				if(json==1){
						alert("Berhasil");
						window.location='index.php?page=home';
				}
				else{
						alert("username atau password anda salah");
				}
				
		  }
	});
}