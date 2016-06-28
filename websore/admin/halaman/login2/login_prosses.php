<?php
session_start();
include_once "../../../config/koneksi.php";

	$username = $_POST['uname2'];
	$password = md5($_POST['password2']);
	
	$query = "SELECT * FROM admin WHERE username='$username' AND password='$password' ";
	
	$hasil = mysql_query($query);
	$data = mysql_fetch_array($hasil);
	$cekhasil = mysql_num_rows($hasil);
	mysql_free_result($hasil);
	
	if($cekhasil > 0) {
	
		$_SESSION['username'] = $data['username'];
		$_SESSION['password'] = $data['password'];
		
		header('location:index.php?page=home');
		echo "Berhasil";
	}else{
		echo "Gagal";
	}
?>