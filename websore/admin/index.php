<?php
session_start();

if(isset($_GET['page'])){
			if(isset($_SESSION["username"])){
			
			$page=$_GET['page'];
			
			}else{ 
			$page="error";
}
			}else{ 
			$page="login";
}

switch($page){
		
		case "error":
			include "halaman/error/error.php";
		break;
		
		
		case "login":
			
			$title="LOGIN";
			include "header.php";
			include "halaman/login/login.php";
			
		break;
		
		
case 'home':
		include "header.php";
		include "menu_atas.php";
		include "menu_kiri.php";
		include "halaman/home/home.php";
		include "footer.php";
		
		break;
		
case 'artikel':
		include "header.php";
		include "menu_atas.php";
		include "menu_kiri.php";
		include "halaman/artikel/artikel.php";
		include "footer.php";
		
		break;
		
case 'news':
		include "header.php";
		include "menu_atas.php";
		include "menu_kiri.php";
		include "halaman/news/news.php";
		include "footer.php";
		
		break;
		
case 'logout':
		$title='logout';
		include "halaman/logout/logout.php";
		
		break;


}


?>