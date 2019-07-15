<?php
$idArticle = $_GET["idArticle"];
$title = $_POST["title"];
$content = $_POST["content"];

include "readyPdo.php";
$query = $pdo->prepare("UPDATE post SET title = ?, content = ? WHERE post.id = ?");
$query->execute([$title, $content, $idArticle]);

header("Location: admin.php");
?>