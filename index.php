<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<form action="calc.php" method="post">
    <input type="number" name="num1" id="num1">
    <input type="number" name="num2" id="num2">
    <select name="action" id="act">
        <option value="p">+</option>
        <option value="m">-</option>
        <option value="d">/</option>
        <option value="mu">*</option>
    </select>
    <input type="submit" value="Calculate">
</form>
</body>
</html>

<?php
