<?php
// Database connection details
$host = "localhost";
$db_name = "softwareengineering";
$username = "root";
$password = "";

// Create connection
$conn = new mysqli($host, $username, $password, $db_name);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// check if 'id' parameter is provided
if (isset($_GET['id'])) {
    $bouquetId = intval($_GET['id']); 

    // get bouquet by id
    $sql = "SELECT * FROM bouquet WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $bouquetId);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $bouquet = $result->fetch_assoc();
        // return bouquet details as JSON
        echo json_encode($bouquet);
    } else {
        echo json_encode(["error" => "Bouquet not found"]);
    }

    $stmt->close();
} else {
    echo json_encode(["error" => "Bouquet ID is required"]);
}

$conn->close();
?>
