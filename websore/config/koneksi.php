<?php
//koneksi ke database

$hostmysql="localhost";
$username="root";
$password="";
$database="db_WebSore";

$conn=mysql_connect("$hostmysql","$username","$password");
mysql_select_db($database,$conn) or die (mysql_error());

?>                            