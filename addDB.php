<?php
include "readyPdo.php";

$section = $_GET["section"];

if ($section == "article") {

	$title = $_POST["title"];
	$content = $_POST["content"];
	$author = $_POST["author"];
	$category = $_POST["category"];
	$query = $pdo->prepare("INSERT INTO post (title, content, author_id, category_id, creationTimeStamp) VALUES (?, ?, ?, ?, now())");
	$query->execute([$title, $content, $author, $category]);
} elseif ($section == "author") {
	$firstName = $_POST["firstName"];
	$lastName = $_POST["lastName"];
	$query = $pdo->prepare("INSERT INTO author (firstName, lastName) VALUES (?, ?)");
	$query->execute([$firstName, $lastName]);
} elseif ($section == "category") {
	$category = $_POST["name"];
	$query =$pdo->prepare("INSERT INTO category (name) VALUES (?)");
	$query->execute([$category]);
}

var_dump($_POST);
header("Location: admin.php");
?>