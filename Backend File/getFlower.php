<?php
$host = "localhost"; 
$db_name = "softwareengineering";
$username = "root"; 
$password = ""; 

// connect to the database
$conn = new mysqli($host, $username, $password, $db_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// fetch flowers, use function random and limit to 5
$sql = "SELECT * FROM flowers ORDER BY RAND() LIMIT 5";
$result = $conn->query($sql);

$data = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

header('Content-Type: application/json');
echo json_encode($data);

$conn->close();
?>
