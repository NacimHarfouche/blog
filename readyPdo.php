<?php
try {
$pdo = new PDO("mysql:host=localhost;dbname=blog","root","");
} catch (Exception $e) {
	die('Erreur : '.$e->getMessage());
}
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$pdo->exec("SET NAMES UTF8");
?>