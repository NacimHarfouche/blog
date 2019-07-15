<?php
$seachWord = $_GET["searchBar"];

include "readyPdo.php";

$query = $pdo->prepare("SELECT title FROM post WHERE title LIKE ?");
$query->execute([$seachWord."%"]);
$posts = $query->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($posts);
?>