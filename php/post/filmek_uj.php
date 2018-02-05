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
	$mufaj6 = mysqli_real_escape_string($connect, $_POST["mufaj"]);

		$sql =  "INSERT INTO filmek (azonosito, cim, megj_ev, hossz, kep) VALUES ('$id1', '$cim2','$ev3','$hossz4','$kep5')";
		$sql2 = "INSERT INTO mufaj (film_az, mufaj) VALUES ('$id1','$mufaj6')";

	mysqli_query($connect, $sql) or die ("Ilyen már létezik, vagy hibás értéket adott meg valamelyik attributumhoz");
	mysqli_query($connect, $sql2) or die ("Ilyen már létezik, vagy hibás értéket adott meg a műfajhoz");

	header("Location: ../../index.html");
	//mysql_close($connect);
?>