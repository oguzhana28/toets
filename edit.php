<?php
include_once( "./class.TemplatePower.inc.php" );

$tpl = new TemplatePower( "./tpl/edit.tpl.html" );
$tpl->prepare();
 
include 'connectDB.php';

  $id = $_GET['id'];
  $query = "select * from schoenmerk WHERE id = $id";
  
  // voer de query uit
  $result = mysqli_query($connection, $query);
  // loop door alle rijen heen

while ($row = mysqli_fetch_assoc ($result))
	
{
	// haal gegevens die we nodig hebben uit de rij
	$id = $row["id"];
	$schoenmerk = $row["schoenmerk"];
	
	$tpl->newBlock( "schoenmerk");
	$tpl->assign( "id", $id );
	$tpl->assign( "schoenmerk", $schoenmerk );
}

$tpl->gotoBlock( "_ROOT" );
$tpl->printToScreen();