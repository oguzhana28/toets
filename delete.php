<?php
include_once( "./class.TemplatePower.inc.php" );

$tpl = new TemplatePower( "./tpl/index.tpl.html" );
$tpl->prepare();

include 'connectDB.php';

    $id = $_GET['id'];

$query = "DELETE FROM schoenmerk WHERE id= $id";

  $result = mysqli_query($connection, $query);

$tpl->printToScreen();


header('Location: ' . $_SERVER['HTTP_REFERER']);
?>