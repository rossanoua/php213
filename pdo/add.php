<?php
require_once 'pdo.php';


$to_base = "INSERT INTO customers (cname, city, rating, snum) VALUES ('".$_POST['cname']."','".$_POST['city']."',".$_POST['rating'].",".$_POST['snum'].")";
//echo $to_base;
$pdo_prepare = $pdo->prepare($to_base);
$pdo_prepare->execute();

echo'
    <script type="text/javascript">
        location="http://awesome.dev/awesome/seotm/php213/pdo/index.php";
    </script>
';

//echo $to_base;

//header("Location: http://php213/index.php");
