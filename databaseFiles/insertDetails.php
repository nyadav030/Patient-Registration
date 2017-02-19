<?php 
// Including database connections
require_once 'database_connections.php';
// Fetching and decoding the inserted data
$data = json_decode(file_get_contents("php://input")); 
// Escaping special characters from submitting data & storing in new variables.
$name = mysqli_real_escape_string($con, $data->name);
$lname = mysqli_real_escape_string($con, $data->lname);
$age = mysqli_real_escape_string($con, $data->age);
$dob = mysqli_real_escape_string($con, $data->dob);
$email = mysqli_real_escape_string($con, $data->email);
$gender = mysqli_real_escape_string($con, $data->gender);
$phone = mysqli_real_escape_string($con, $data->phone);
$address = mysqli_real_escape_string($con, $data->address);

// mysqli insert query
$query = "INSERT into p_details (p_name,p_lname,p_age,p_dob,p_email,p_gender,p_phone,p_address) VALUES ('$name','$lname','$age','$dob','$email','$gender','$phone','$address')";
// Inserting data into database
mysqli_query($con, $query);
echo true;
?>