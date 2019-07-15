<?php
$firstName = $_POST["firstName"];
$lastName = $_POST["lastName"];
include "readyPdo.php";
$query = $pdo->prepare("INSERT INTO post (title, content, author_id, category_id, creationTimeStamp) VALUES (?, ?, ?, ?, now())");
$query->execute([$title, $content, $author, $category]);

var_dump($_POST);
header("Location: admin.php");
?>