<?php
include_once( "./class.TemplatePower.inc.php" );

$tpl = new TemplatePower( "./tpl/index.tpl.html" );
$tpl->prepare();

include'connectDB.php';
var_dump($_REQUEST);

if(!empty($_REQUEST['search'])){

    $search = $_REQUEST['search'];

    $sql = "SELECT * FROM schoenmerk WHERE schoenmerk LIKE '%".$search."%'"; 
    $r_query = mysqli_query($connection, $sql); 

    while ($row = mysqli_fetch_array($r_query)){  
       $id = $row["id"];
	$schoenmerk = $row["schoenmerk"];

	$tpl->newBlock( "schoenmerk");
    $tpl->assign( "id", $id );
	$tpl->assign( "schoenmerk", $schoenmerk );
        
           $getSize = "select * from sizes where schoenmerk_id =$id";

    $size_result = mysqli_query($connection, $getSize);
    
    while ($row_size = mysqli_fetch_assoc ($size_result))
    {
        $id = $row_size["id"];
        $schoenmerk_id = $row_size["schoenmerk_id"];
        $size = $row_size["size"];

        $tpl->newBlock( "size");
        $tpl->assign( "id", $id );
        $tpl->assign( "schoenmerk_id", $schoenmerk_id );
        $tpl->assign( "size", $size );
    }
    
    }
    
}else{
    echo "<h1>Please enter a valid search request</h1>";
}
$tpl->gotoBlock( "_ROOT" );
$tpl->printToScreen();
?>