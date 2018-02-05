<?php
header('Content-Type: application/json');
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

$sql =  "SELECT filmstudiok.nev, COUNT(filmskeszites.film_az), mufaj AS counted FROM filmstudiok, mufaj
		LEFT JOIN filmkeszites ON filmkeszites.stud_az = filmstudiok.azonosito
		WHERE mufaj = 'sci-fi'
		GROUP BY film_az
		ORDER BY counted DESC LIMIT 1";

$result = mysqli_query($connect, $sql) or die("result HIBA");

$i = 0;

while($record=mysqli_fetch_assoc($result)){
	$data[$i]["azonosito"] = $record['azonosito'];
	$data[$i]["nev"] = $record['nev'];
	$data[$i]["szul"] = $record['szul'];
	$data[$i]["nem"] = $record['nem'];
	$i++;
}

echo json_encode($data);
?>