<?php
header('Content-Type: application/json');
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

$sql =  "SELECT szinesz.nev, COUNT(szereples.film_az) AS counted FROM szinesz
	LEFT JOIN szereples ON szereples.szinesz_az = szinesz.azonosito
	GROUP BY film_az
	ORDER BY counted DESC LIMIT 1";

$result = mysqli_query($connect, $sql) or die("result HIBA");

$i = 0;

while($record=mysqli_fetch_assoc($result)){
	$data[$i]["nev"] = $record['nev'];
	$data[$i]["counted"] = $record['counted'];
	$i++;
}

echo json_encode($data);
?>