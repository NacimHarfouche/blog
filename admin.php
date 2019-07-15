<?php
include "readyPdo.php";
$query = $pdo->prepare("SELECT post.id, title, content, creationTimeStamp, author_id, category_id, firstName, lastName, name FROM post INNER JOIN author ON post.author_id = author.id INNER JOIN category ON post.category_id = category.id");
$query->execute();

$posts = $query->fetchALL(PDO::FETCH_ASSOC); 

//var_dump($posts);
session_start();
//var_dump($_SESSION);
include "admin.phtml";
?>