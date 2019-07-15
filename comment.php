<?php
// recupère l'id du post
$idArticle = $_GET["idArticle"];
//include la partie sql pdo
include "readyPdo.php";
// select la db post
$query = $pdo->prepare("SELECT * FROM post WHERE post.id = ?");
$query->execute([$idArticle]);

$post = $query->fetch(PDO::FETCH_ASSOC);

// recupère le pseudo et commentaire poster
$pseudo = $_POST["pseudo"];
$commentaire = $_POST["commentaire"];

// lance la requete sql pour add le commentaire dans la db
$query = $pdo->prepare("INSERT INTO comment (pseudo, comment.content, post_id, creationTimeStamp) VALUES (?, ?, ?, now())");
$query->execute([$pseudo, $commentaire, $idArticle]);

header("Location: detailArticle.php?idArticle=$idArticle");
?>