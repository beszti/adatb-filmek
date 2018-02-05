<?php
header('Content-Type: application/json');
$host="localhost";
$user="root";
$password="";
$db="imdb";
$connect = mysqli_connect($host, $user, $password, $db) or die ("HIBA az adatbázisban");

mysqli_set_charset($connect,"utf8");

$sql =  "SELECT * FROM filmek
		ORDER BY azonosito";

$sqlmufaj = "SELECT * FROM mufaj
			WHERE mufaj = 'horror'
			ORDER BY azonosito";

$result = mysqli_query($connect, $sql) or die("result HIBA");

$result2 = mysqli_query($connect, $sqlmufaj) or die("result HIBA");

$i = 0;

while($record=mysqli_fetch_assoc($result2)){
	$dataS[$i]["azonosito"] = $record['film_az'];
	$i++;
}

while($record=mysqli_fetch_assoc($result)){
	for ($k=0; $k < sizeof($dataS); $k++) {
		if ($dataS[$k]["azonosito"] == $record['azonosito']) {
			$data3[$k]["azonosito"] = $record['azonosito'];
			$data3[$k]["cim"] = $record['cim'];
			$data3[$k]["megj_ev"] = $record['megj_ev'];
			$data3[$k]["hossz"] = $record['hossz'];
			$data3[$k]["kep"] = $record['kep'];
		}
	}
}

echo json_encode($data3);
?>