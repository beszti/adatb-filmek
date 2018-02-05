<?php
header('Content-Type: application/json');
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

$id = mysqli_real_escape_string($connect, $_POST["id"]);

$sql =  "SELECT azonosito,cim FROM filmek
		WHERE azonosito ='$id'" ;
$sql2 =  "SELECT azonosito, nev FROM szinesz
		WHERE azonosito ='$id'" ;
$sql3 =  "SELECT azonosito, nev FROM filmstudiok
		WHERE azonosito ='$id'" ;

$result = mysqli_query($connect, $sql) or die("result HIBA");

$i = 0;

while($record=mysqli_fetch_assoc($result)){
	$data[$i]["azonosito"] = $record['azonosito'];
	$data[$i]["nev"] = $record['cim'];
	$i++;
}
$result = mysqli_query($connect, $sql2) or die("result HIBA");
while($record=mysqli_fetch_assoc($result)){
	$data[$i]["azonosito"] = $record['azonosito'];
	$data[$i]["nev"] = $record['nev'];
	$i++;
}
$result = mysqli_query($connect, $sql3) or die("result HIBA");
while($record=mysqli_fetch_assoc($result)){
	$data[$i]["azonosito"] = $record['azonosito'];
	$data[$i]["nev"] = $record['nev'];
	$i++;
}
	header("Location: ../index.html");

echo json_encode($data);
?>