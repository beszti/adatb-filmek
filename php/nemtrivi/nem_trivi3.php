<?php
header('Content-Type: application/json');
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

$sql =  "SELECT filmek.cim, COUNT(szereples.szinesz_az) AS counted FROM filmek
	LEFT JOIN szereples ON szereples.film_az = filmek.azonosito
	GROUP BY filmek.cim
	ORDER BY counted DESC LIMIT 1";

$result = mysqli_query($connect, $sql) or die("result HIBA");

$i = 0;

while($record=mysqli_fetch_assoc($result)){
	$data[$i]["cim"] = $record['cim'];
	$data[$i]["counted"] = $record['counted'];
	$i++;
}

echo json_encode($data);
?>