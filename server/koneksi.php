<?php
	$host="localhost";
	$username="root";
	$password="08121995";
	$databasename="inventory";
	$koneksi=mysql_connect($host,$username,$password) or die ("DatabaseError");
	mysql_select_db($databasename,$koneksi);
?>
