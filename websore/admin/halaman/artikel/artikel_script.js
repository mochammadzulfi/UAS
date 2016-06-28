// JavaScript Document

$(document).ready(function(){
   
	//alert("tes"); 
	
	var Modul=$("section#artikel");
	Modul.find("div#form").hide();
	
	Modul.find("#btnTambah").click(function(){
  	// action goes here!!
  	//alert("tes");
	Modul.find("div#data").hide();
	Modul.find("div#form").fadeIn();
	
});
  	Modul.find("#btnBatal").click(function(){
		Modul.find("div#form").hide();	
		Modul.find("div#data").fadeIn();
	
	});
	
});