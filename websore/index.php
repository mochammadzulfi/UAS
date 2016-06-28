<?php
if(isset($_GET['page'])){
			$page=$_GET['page'];
}
else{ 
		$page='home';
}

switch($page){

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
		
case 'sport':
		include "header.php";
		include "menu_atas.php";
		include "menu_kiri.php";
		include "halaman/sport/sport.php";
		include "footer.php";
		
		break;

}


?>