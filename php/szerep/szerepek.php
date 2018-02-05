<?php
header('Content-Type: application/json');
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

$sql =  "SELECT filmek.cim, szinesz.nev, szereples.szerep FROM szinesz LEFT JOIN szereples ON szereples.szinesz_az = szinesz.azonosito LEFT JOIN filmek ON szereples.film_az = filmek.azonosito 
	ORDER BY szinesz.nev ASC, filmek.cim ASC";

$result = mysqli_query($connect, $sql) or die("result HIBA");

$i = 0;

while($record=mysqli_fetch_assoc($result)){
	$data[$i]["nev"] = $record['nev'];
	$data[$i]["cim"] = $record['cim'];
	$data[$i]["szerep"] = $record['szerep'];
	$i++;
}

echo json_encode($data);
?>