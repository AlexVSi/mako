<?php
$host = '127.0.0.1';
$port = '3306';
$username = 'root';
$password = 'mysql';
$db_name = 'Mako';

try {
	$connectPDO = new PDO("mysql:host=$host; dbname=$db_name; port=$port", $username, $password);
} catch (PDOException $exception) {
	echo "Error: {$exception->getMessage()}";
}
?>