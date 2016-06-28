<?php
session_start();
include "../../../config/koneksi.php";
	
	$Action = $_POST['action'];
	switch ($Action){
	
		case "login";
				$username = $_POST['uname2'];
				$password = md5($_POST['password2']);
				
				$query = "SELECT * FROM admin WHERE username='$username' AND password='$password'";
				
				$hasil = mysql_query($query);
				$data = mysql_fetch_array($hasil);
				$cekhasil = mysql_num_rows($hasil);
				//echo json_encode($cekhasil);
				if($cekhasil >0){
				
					$_SESSION['username'] = $data['username'];
					$_SESSION['password'] = $data['password'];
					
					echo json_encode($cekhasil);
					
				}else{
					echo json_encode($cekhasil);
				}
				
			break;
		
	}
?>