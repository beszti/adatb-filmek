<?php
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

	$nev2 = mysqli_real_escape_string($connect, $_POST["nev"]);
	$orszag3 = mysqli_real_escape_string($connect, $_POST["orszag"]);
	$varos4 = mysqli_real_escape_string($connect, $_POST["varos"]);
	$cim5 = mysqli_real_escape_string($connect, $_POST["cim"]);
	$terem6 = mysqli_real_escape_string($connect, $_POST["terem"]);

		$sql =  "INSERT INTO filmstudiok (nev, orszag, varos, cim, terem) VALUES ('$nev2','$orszag3','$varos4','$cim5','$terem6')";

	mysqli_query($connect, $sql) or die ("Ilyen már létezik, vagy hibás értéket adott meg valamelyik attribútumhoz");

	header("Location: ../../index.html");
?>