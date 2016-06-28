<?php
include "../../../config/koneksi.php";

$Action = $_POST['action'];
switch ($Action){
	
		case "viewData";
				$query="select * from news";
				
				$hasil=mysql_query($query);
				
				$arr=array(); //buat array untuk tampung data
				
				while($data=mysql_fetch_array($hasil)){
				
				array_push($arr,$data);//masukkan data fetch ke array
				}
				
				echo json_encode($arr); //ubah array ke bentuk json
				//echo json_encode("Haloooooo");
			break;	
			
			case "commit";
			
				$id		=$_POST['id_news'];
				$judul	=$_POST['judul_news'];
				$isi	=$_POST['isi_news'];
				
				if($id == ""){
					//query insert
					$query = "INSERT INTO news(judul,isi) values ('$judul', '$isi')";
					$pesan = "Data Berhasil Di Inputkan";
				}else{
					//query Update
					$query = "UPDATE NEWS set judul='$judul',
											  isi='$isi' 
											  where id_news='$id' ";
					$pesan = "Update Berhasil ";
				}
				
				$hasil = mysql_query($query);
				
				echo json_encode($pesan);

				break;
				
				case "hapus";
					$id		= $_POST['id'];
					
					$query="delete from news where id_news=$id";
					$hasil=mysql_query($query);
					
					echo json_encode($query);
					
				break;
				
			case "ViewEditData":
			
				$id = $_POST['id'];
				
				$query="select * from news where id_news ='$id' ";
				
				$hasil=mysql_query($query);
				
				$arr=array(); //buat array untuk tampung data
				
				while($data=mysql_fetch_array($hasil)){
				
				array_push($arr,$data);//masukkan data fetch ke array
				}
				
				echo json_encode($arr); //ubah array ke bentuk json
				//echo json_encode("Haloooooo");
			
			break;
	
}

?>
