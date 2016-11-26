<?php
$host = "localhost";
$db = "shop";
$user = "root";
$pass = "";
$dsn = "mysql:host=localhost;dbname=shop";
$opt = array(
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
);
$pdo = new PDO($dsn, $user, $pass, $opt);

