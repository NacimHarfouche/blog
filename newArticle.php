<?php
$section = $_GET["section"];
include "readyPdo.php";
$query = $pdo->prepare("SELECT * FROM author");
$query->execute();
$authors = $query->fetchALL(PDO::FETCH_ASSOC);

$query = $pdo->prepare("SELECT * FROM category");
$query->execute();
$categorys = $query->fetchALL(PDO::FETCH_ASSOC);

//var_dump($authors, $categorys);

include "newArticle.phtml";
?>
