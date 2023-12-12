<?php
require_once __DIR__ . '/connect.php';

$firstname = $_POST['name'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$phoneNumber = $_POST['phoneNumber'];
$service = $_POST['service'];
$projectName = $_POST['projectName'];
$taskDescription = $_POST['taskDescription'];
$find = $_POST['find'];

$arrayCustomer = [
	':firstname' => $firstname,
	':lastname' => $lastname,
	':email' => $email,
	':phoneNumber' => $phoneNumber
];

try {
	$sqlQueryCustomer = "INSERT INTO Customers (firstname, lastname, email, phone_number) VALUE (:firstname, :lastname, :email, :phoneNumber)";
	$stmt = $connectPDO->prepare($sqlQueryCustomer);
	$stmt->execute($arrayCustomer);
} catch (PDOException $exception) {
	echo "Error: {$exception->getMessage()}";
}

$id_customer =$connectPDO->lastInsertId();

$arrayOrder = [
	':customer' => $id_customer,
	':service_type' => $service,
	':project_name' => $projectName,
	':taskDescription' => $taskDescription,
];

try {
	$sqlQueryOrder = "INSERT INTO Orders (customer, project_name, service_type, task_description) VALUE (:customer, :project_name, :service_type, :taskDescription)";
	$stmt = $connectPDO->prepare($sqlQueryOrder);
	$stmt->execute($arrayOrder);
} catch (PDOException $exception) {
	echo "Error: {$exception->getMessage()}";
}

$arrayStatistic = [
	':customer' => $id_customer,
	':find' => $find,
];

try {
	if ($find != '') {
		$sqlQueryStatistic = "INSERT INTO Statistic (customer_id, way_to_find_study) VALUE (:customer, :find)";
		$stmt = $connectPDO->prepare($sqlQueryStatistic);
		$stmt->execute($arrayStatistic);
	}
} catch (PDOException $exception) {
	echo "Error: {$exception->getMessage()}";
}
?>