<?php
require_once 'pdo.php';

$index = $_POST['del'];

$del = "DELETE FROM `customers` WHERE ((`cnum` =" . $index. "))";

$pdo_prepare = $pdo->prepare($del);
$pdo_prepare->execute($values);

echo'
    <script type="text/javascript">
        location="http://awesome.dev/awesome/seotm/php213/pdo/index.php";
    </script>
';