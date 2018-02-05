<?php
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

	$nev2 = mysqli_real_escape_string($connect, $_POST["nev"]);
	$szul3 = mysqli_real_escape_string($connect, $_POST["szul"]);
	$nem4 = mysqli_real_escape_string($connect, $_POST["nem"]);

		$sql =  "INSERT INTO szinesz (nev, szul, nem) VALUES ('$nev2','$szul3','$nem4')";

	mysqli_query($connect, $sql) or die ("Ilyen már létezik, vagy hibás értéket adott meg valamelyik attributumhoz");

	header("Location: ../../index.html");
	//mysql_close($connect);
?>