<?php 
$idArticle = $_GET["idArticle"];
//var_dump($idArticle);
include "readyPdo.php";
$query = $pdo->prepare("SELECT post.id, title, post.content, firstName, lastName FROM post INNER JOIN author ON post.author_id = author.id WHERE post.id = ?");
$query->execute([$idArticle]);
$post = $query->fetch(PDO::FETCH_ASSOC);


include "editArticle.phtml";
?>