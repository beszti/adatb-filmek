<?php
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

	$id1 = mysqli_real_escape_string($connect, $_POST["id"]);
	$fid2 = mysqli_real_escape_string($connect, $_POST["fid"]);
	$stid3 = mysqli_real_escape_string($connect, $_POST["stid"]);

		$sql =  "UPDATE filmkeszites SET film_az = '$fid2', stud_az = '$stid3' WHERE azonosito = '$id1' ";

	mysqli_query($connect, $sql) or die ("Ilyen már létezik, vagy hibás értéket adott meg valamelyik attributumhoz");

	header("Location: ../../index.html");
?>