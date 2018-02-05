<?php
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

	$id1 = mysqli_real_escape_string($connect, $_POST["id"]);
	$nev2 = mysqli_real_escape_string($connect, $_POST["nev"]);
	$orszag3 = mysqli_real_escape_string($connect, $_POST["orszag"]);
	$varos4 = mysqli_real_escape_string($connect, $_POST["varos"]);
	$cim5 = mysqli_real_escape_string($connect, $_POST["cim"]);	
	$terem6 = mysqli_real_escape_string($connect, $_POST["terem"]);

		$sql =  "UPDATE filmstudiok SET nev = '$nev2', orszag = '$orszag3',  varos = '$varos4', cim = '$cim5', terem = '$terem6' WHERE azonosito = '$id1' ";

	mysqli_query($connect, $sql) or die ("Ilyen már létezik, vagy hibás értéket adott meg valamelyik attributumhoz");

	header("Location: ../../index.html");
?>