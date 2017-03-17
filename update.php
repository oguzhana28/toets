<?php
header('Location: index.php');
	include'connectDB.php';

	 $id = $_POST['id'];
	$schoenmerk = $_POST['schoenmerk'];
	
	$query = "UPDATE schoenmerk SET schoenmerk = '$schoenmerk' WHERE id = $id";

	 $result = mysqli_query($connection, $query);

?>