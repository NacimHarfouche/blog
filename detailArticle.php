<?php
$idArticle = $_GET["idArticle"];

include "readyPdo.php";

$query = $pdo->prepare("SELECT * FROM author INNER JOIN post ON post.author_id = author.id WHERE post.id = ?");
$query->execute([$idArticle]);

$author = $query->fetch(PDO::FETCH_ASSOC);



$query = $pdo->prepare("SELECT * FROM comment WHERE post_id = ?");
$query->execute([$idArticle]);

$comments = $query->fetchALL(PDO::FETCH_ASSOC);
session_start();
//var_dump($_SESSION);

include "detailArticle.phtml";
?>