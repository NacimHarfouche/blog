<?php
$idArticle = $_GET["idArticle"];

include "readyPdo.php";
$query = $pdo->prepare("DELETE FROM post WHERE post.id = ?");
$query->execute([$idArticle]);

header("Location: admin.php");
?>