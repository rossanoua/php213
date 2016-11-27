<html>
<head>
    <meta charset="UTF-8">
    <style>
    table, tr, td, th{
        border:1px solid black;
        border-collapse: collapse;
    }
    td{
        text-align: center;
    }
</style>

</head>
<body>
<table>
<?php
require_once 'pdo.php';

$from_base = $pdo->query('SELECT cnum, cname, city, rating FROM customers');
echo "
    <tr>
        <th>ID</th>
        <th>ИМЯ</th>
        <th>ГОРОД</th>
        <th>РЕЙТИНГ</th>
    </tr>";
while($row = $from_base->fetch()){
//    echo "<tr><td>".$row['cnum']."</td><td>".$row['cname']."</td><td>".$row['city']."</td><td>".$row['rating']."</td><td>". "<form action='del.php'><input type='hidden' value=''><input type='submit'></form>" ."</td></tr>";

printf("<tr>
        <td>%s</td>
        <td>%s</td>
        <td>%s</td>
        <td>%s</td>
            <td>
                <form action='del.php' method='post'>
                    <input type='hidden' name='del' value='%s'>
                    <input type='submit' value='DEL'>
                </form>
            </td>
    </tr>",
    $row['cnum'], $row['cname'], $row['city'], $row['rating'], $row['cnum'])
;}
?>
</table>
</br>
</br>
</br>
</br>
<form action="add.php" method="post">
    <label for="cname">Имя</label><input type="text" name="cname" id="cname">
    <label for="city">Город</label><input type="text" name="city" id="city">
    <label for="rating">Рейтинг</label><input type="number" name="rating" id="rating">
    <label for="snum">Реферал</label><input type="number" name="snum" id="snum">
    <input type="submit" value="Записать">
</form>
</body>
</html>