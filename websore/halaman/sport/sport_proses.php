<?php
include "../../config/koneksi.php";

$Action = $_POST['action'];
switch ($Action){
	
		case "viewData";
				$query="select * from sport";
				
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
