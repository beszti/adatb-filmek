<?php
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

	$id1 = mysqli_real_escape_string($connect, $_POST["id"]);
	$cim2 = mysqli_real_escape_string($connect, $_POST["cim"]);
	$ev3 = mysqli_real_escape_string($connect, $_POST["ev"]);
	$hossz4 = mysqli_real_escape_string($connect, $_POST["hossz"]);
	$kep5 = mysqli_real_escape_string($connect, $_POST["kep"]);

		$sql =  "UPDATE filmek SET cim = '$cim2', megj_ev = '$ev3',  hossz = '$hossz4', kep = '$kep5' WHERE azonosito = '$id1' ";

	mysqli_query($connect, $sql) or die ("Ilyen már létezik, vagy hibás értéket adott meg valamelyik attributumhoz");

	header("Location: ../../index.html");
?>