<?php
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

	$fid2 = mysqli_real_escape_string($connect, $_POST["fid"]);
	$szid3 = mysqli_real_escape_string($connect, $_POST["szid"]);
	$szerep4 = mysqli_real_escape_string($connect, $_POST["szerep"]);

		$sql =  "INSERT INTO szereples (film_az, szin_az, szerep) VALUES ('$fid2','$szid3','$szerep4')";

	mysqli_query($connect, $sql) or die ("Ilyen már létezik, vagy hibás értéket adott meg valamelyik attribútumhoz");

	header("Location: ../../index.html");
?>