<?php
header('Content-Type: application/json');
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

$sql =  "SELECT * FROM filmek
		WHERE megj_ev = '2016' 
		ORDER BY azonosito";

$sqlmufaj = "SELECT * FROM mufaj
			ORDER BY azonosito";

$result = mysqli_query($connect, $sql) or die("result HIBA");

$result2 = mysqli_query($connect, $sqlmufaj) or die("result HIBA");

$i = 0;
while($record=mysqli_fetch_assoc($result)){
	$data[$i]["azonosito"] = $record['azonosito'];
	$data[$i]["cim"] = $record['cim'];
	$data[$i]["megj_ev"] = $record['megj_ev'];
	$data[$i]["hossz"] = $record['hossz'];
	$data[$i]["kep"] = $record['kep'];
	$i++;
}

while($record=mysqli_fetch_assoc($result2)){
	for ($k=0; $k < sizeof($data); $k++) { 
		if ($data[$k]["azonosito"] == $record['film_az']) {
			$data[$k]["mufaj"][] = $record['mufaj'];
		}
	}
}

echo json_encode($data);
?>