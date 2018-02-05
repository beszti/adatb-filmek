<?php
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

	$fid2 = mysqli_real_escape_string($connect, $_POST["fid"]);
	$stid3 = mysqli_real_escape_string($connect, $_POST["stid"]);

		$sql =  "INSERT INTO filmkeszites (film_az, stud_az) VALUES ('$fid2','$stid3')";

	mysqli_query($connect, $sql) or die ("Ilyen már létezik, vagy hibás értéket adott meg valamelyik attribútumhoz");

	header("Location: ../../index.html");
?>