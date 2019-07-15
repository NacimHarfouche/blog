<?php 

include "readyPdo.php";

$query = $pdo->prepare("SELECT * FROM author INNER JOIN post ON author.id = post.author_id");
$query->execute();

$authors = $query->fetchAll(PDO::FETCH_ASSOC);

//var_dump($authors);

include "index.phtml";
?>