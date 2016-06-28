// JavaScript Document
$(document).ready(function(){
	//var Modul = $('section#news');					   
	//alert("halaman news");
	menampilkan_data();
});	

function menampilkan_data(){
	var Modul=$('section#sport');
	
	
		$.ajax({
			 type		: "POST",   
			 dataType	: "json",
			 url		: "halaman/sport/sport_proses.php",
			 data		: {action:"viewData"},
			 success	: function (json) {
				 
				 Modul.find('.media').empty();
				 
					$.each(json,function(index,row){
						var data=  "<div class='media-left media-top'>"+
									"<a href='?page=home'>"+
									  "<img class='media-object' src='img/Penguins.jpg' alt='...' width='80' height='80'>"+
									"</a>"+
								  "</div>"+
								  "<div class='media-body'>"+
									"<h4 class='media-heading'>"+row.judul+"</h4>"+
									"<p align='justify'>"+row.isi+"</p>"+
								  "<a href='?page=home'>  Lihat Selengkapnya... </a>"+
								  "</div>";
				Modul.find('.media').append(data);
		   });
		}
	});
}