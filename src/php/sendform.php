<?php
// Подключение к базе данных
$servername = "localhost";
$username = "root";
$password = "mysql";
$dbname = "Mako_test";

$conn = new mysqli($servername, $username, $password, $dbname);

// Проверка соединения
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Получение данных из формы
$name = $_POST['name'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$phoneNumber = $_POST['phoneNumber'];
$service = $_POST['service'];
$projectName = $_POST['projectName'];
$taskDescription = $_POST['taskDescription'];
$find = $_POST['find'];

// Запрос к базе данных
$sql = "INSERT INTO Mako_test (name, lastname, email, phone_number, service, project_name, taskDescription, find)
			VALUES ('$name', '$lastname', '$email', '$phoneNumber', '$service', '$projectName', '$taskDescription', '$find')";

if ($conn->query($sql) === TRUE) {
    echo "Данные успешно добавлены в базу данных";
} else {
    echo "Ошибка: " . $sql . "<br>" . $conn->error;
}

// Закрытие соединения
$conn->close();
?>