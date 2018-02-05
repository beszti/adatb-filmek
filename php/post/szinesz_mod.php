<?php
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

	$id1 = mysqli_real_escape_string($connect, $_POST["id"]);
	$nev2 = mysqli_real_escape_string($connect, $_POST["nev"]);
	$szul3 = mysqli_real_escape_string($connect, $_POST["szul"]);
	$nem4 = mysqli_real_escape_string($connect, $_POST["nem"]);

		$sql =  "UPDATE szinesz SET nev = '$nev2', szul = '$szul3',  nem = '$nem4' WHERE azonosito = '$id1' ";

	mysqli_query($connect, $sql) or die ("HIBA az 1. feltöltésben");
	header("Location: ../../index.html");
?>