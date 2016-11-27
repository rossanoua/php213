<?php

$host = "localhost";
$db = "shop";
$user = "dbuser";
$pass = "123";
$dsn = "mysql:host=localhost;dbname=shop";
$opt = array(

//      были знаки вопроса вместо русских букв
//      при выводе данных из базы
//      погуглил
//      добавил эту строку
    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
//
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
);
$pdo = new PDO($dsn, $user, $pass, $opt);

