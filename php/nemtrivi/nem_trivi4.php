<?php
header('Content-Type: application/json');
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

$sql =  "SELECT filmstudiok.nev, COUNT(filmkeszites.film_az) AS counted FROM filmstudiok
	LEFT JOIN filmkeszites ON filmkeszites.stud_az = filmstudiok.azonosito
	GROUP BY filmstudiok.nev
	ORDER BY counted DESC LIMIT 10";

$result = mysqli_query($connect, $sql) or die("result HIBA");

$i = 0;

while($record=mysqli_fetch_assoc($result)){
	$data[$i]["nev"] = $record['nev'];
	$data[$i]["counted"] = $record['counted'];
	$i++;
}

echo json_encode($data);
?>