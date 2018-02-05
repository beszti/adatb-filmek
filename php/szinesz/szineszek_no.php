<?php
header('Content-Type: application/json');
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

$sql =  "SELECT * FROM szinesz
		WHERE nem = 'nő'
		ORDER BY nev";

$result = mysqli_query($connect, $sql) or die("result HIBA");

$i = 0;

while($record=mysqli_fetch_assoc($result)){
	$data[$i]["azonosito"] = $record['azonosito'];
	$data[$i]["nev"] = $record['nev'];
	$data[$i]["szul"] = $record['szul'];
	$i++;
}

echo json_encode($data);
?>