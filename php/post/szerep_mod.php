<?php
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

	$id1 = mysqli_real_escape_string($connect, $_POST["id"]);
	$fid2 = mysqli_real_escape_string($connect, $_POST["fid"]);
	$szid3 = mysqli_real_escape_string($connect, $_POST["szid"]);
	$szerep4 = mysqli_real_escape_string($connect, $_POST["szerep"]);

		$sql =  "UPDATE szereples SET film_az = '$fid2', szinesz_az = '$szid3',  szerep = '$szerep4' WHERE azonosito = '$id1' ";

	mysqli_query($connect, $sql) or die ("Ilyen már létezik, vagy hibás értéket adott meg valamelyik attributumhoz");

	header("Location: ../../index.html");
?>