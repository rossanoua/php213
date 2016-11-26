<?php
$num1 = $_POST['num1'];
$num2 = $_POST['num2'];
$action = $_POST['action'];


function result($num1, $num2, $action){
    switch ($action){
        case 'p':
            echo $num1 + $num2;
            break;
        case 'm':
            echo $num1 - $num2;
            break;
        case 'd':
            echo $num1 / $num2;
            break;
        case 'mu':
            echo $num1 * $num2;
            break;
        default:
            echo 'Вы все данные ввели?';
    }

}

$echo_result = result($num1, $num2, $action);
echo $echo_result;