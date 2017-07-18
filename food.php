<!--/*
 * food.php
 *
 *
 *
 * Date 6/7/2017
 *
 * @reference https://www.w3schools.com/php/php_mysql_select.asp
 * 
 */ -->
<?php
$servername = "127.0.0.1";
$username = "imperialguard82";
$password = "";
$dbname = "gluten_free";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * FROM food";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h3 style='width: 30%;'>Gluten Free Foods:</h3>";
    echo"<br>";
    echo "<table><tr><th style='width: 30%; border: 3px solid black;'>Food ID</th><th style='width: 30%; border: 3px solid black;'>Food Name</th><th style='width: 30%; border: 3px solid black;'>Where To Buy</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td style='width: 30%; border: 3px solid black;' >" . $row["food_id"]. "</td><td style='width: 30%; border: 3px solid black;'>" . $row["food_name"]. " </td><td style='width: 30%; border: 3px solid black;'> " . $row["wheretobuy"]. "</td></tr>";
    }
    echo "</table>";
    echo "<br>";
}
else {
    echo "0 results";
}

$conn->close();
?> 

