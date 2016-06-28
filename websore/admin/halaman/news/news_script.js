// JavaScript Document

$(document).ready(function(){
   
	//alert("tes"); 
	menampilkanData();
	
	var Modul=$("section#news");
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
		//Mereset form
		Modul.find('form#form')[0].reset();
		Modul.find('input#id').val("");
	
	});
	
	Modul.find("#btnProses").click(function(){
								
		//Cara mengambil Nilai TextField				
		var id = Modul.find('input#id_news').val(); 
		var judul = Modul.find('input#judul').val();
		var isi = Modul.find('textarea#isi').val();
		
	
		$.ajax({
			 type		: "POST",   
			 dataType	: "json",
			 url		: "halaman/news/news_proses.php",
			 data		: {action:'commit', id_news:id, judul_news:judul, isi_news:isi},
			 success	: function (json) {
					alert(json)	 
			 },
			 complete		: function(){
			 	Modul.find('form#form')[0].reset();
				Modul.find('input#id').val("");
				menampilkanData();
				Modul.find("div#form").hide();
				Modul.find("div#data").fadeIn();
			
			 }
			 
			});
	});
	
});

//Membuat funsi untuk menampilkan data
function menampilkanData(){
	var Modul= $("section#news");
	$.ajax({
		   type		: "POST",
		   dataType	: 'json',
		   url		: "halaman/news/news_proses.php",
		   data		: {action:'viewData'},
		   success	: function (json) {
				//alert(json);   
				var no=0;
				Modul.find('table#tabelData tbody').empty(); //kosongkan tabel
				$.each(json,function(index,row){
						no++;
						var data=  "<tr><td>"+no+"</td>"+
									"<td>"+row.judul+"</td>"+
									"<td>"+row.isi+"</td>"+
									"<td></td>"+
									"<td></td>"+
									"<td>"+
									
									"<a title = 'Edit Data' class='btn btn-xs btn-success' onclick='editData("+row.id_news+")'>Edit</a>" +
									
									"<a title = 'Delete Data' class='btn btn-xs btn-danger' onclick='deleteData("+row.id_news+")'>Delete</a>"
									
									+"</td>"+
									"</tr>";
				Modul.find('table#tabelData tbody').append(data);
		   });
		   }//Penutup success: function (json) {
		   });//Penutup $.ajax({

}//Penutup $.ajax({
		

function deleteData(idNews){
	var Modul= $("section#news");
	
	$.ajax({
		   type		: "POST",
		   dataType	: 'json',
		   url		: "halaman/news/news_proses.php",
		   data		: {action:'hapus',id:idNews},
		   
		   success	: function(json) {
			   		  alert('data telah dihapus');
					  menampilkanData();
		   }
	 });
}	

function editData(idNews){
	//alert(idNews);
	var Modul = $("section#news");
	$.ajax({
		type		: "POST",
		dataType	: "json",
		url			: "halaman/news/news_proses.php",
		data		: {action:'ViewEditData',id:idNews},
		success		: function(json){
			//alert(json);
			Modul.find('input#id_news').val(json[0].id_news);
			Modul.find('input#judul').val(json[0].judul);
			Modul.find('textarea#isi').val(json[0].isi);
			
		},//penutup success
		complete		: function(){
			Modul.find("div#data").hide();
			Modul.find("div#form").fadeIn();
		}
	});//penutup ajax
}//penutup function editdata(idnews)
