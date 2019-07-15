<?php
$email = $_POST["email"];
$password = $_POST["password"];

$pdo = new PDO("mysql:host=localhost;dbname=blog","root","");
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$pdo->exec("SET NAMES UTF8");

$query = $pdo->prepare("SELECT * FROM users WHERE email = ? AND password = ?");
$query->execute([$email, $password]);
$user = $query->fetch(PDO::FETCH_ASSOC);

if ($user) {
	session_start();
	$_SESSION["name"] = $user["firstName"];
	$_SESSION["lastname"] = $user["lastName"];
	$_SESSION["status"] = $user["status"];
}

header("Location: index.php");
exit();
?>