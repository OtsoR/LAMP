<?php
//LOGIN
$user='heppa';
$password='8iml4Ah0vEjrfQDYOZOV';

//COnnection
$datab=$user;
$dsn="mysql:host=localhost;charset=UTF8;dbname=$datab";

//Connectionopen
$pdo=new PDO($dsn, $user, $password);

$pdoStat=$pdo->prepare('SELECT * FROM model;');
$pdoStat->execute();
$hits=$pdoStat->fetchAll();

foreach($hits as $row) {
 echo "<p>".$row['id']." ".$row['name']." </p>\n";
}
?>
