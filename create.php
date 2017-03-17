<?php
include_once( "./class.TemplatePower.inc.php" );

$tpl = new TemplatePower( "./tpl/create.tpl.html" );
$tpl->prepare();

if(isset($_POST["submit"])){
    
include'connectDB.php';

$query = "INSERT INTO schoenmerk (schoenmerk)
VALUES ('".$_POST["schoenmerk"]."')";
    
  $result = mysqli_query($connection, $query);

}

$tpl->printToScreen();
?>