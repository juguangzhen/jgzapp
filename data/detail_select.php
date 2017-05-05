<?php
	header('Content-Type:application/json;charset=UTF-8');

	@$pid=$_REQUEST['pid'] or die('{"code":2,"msg":"pid required"}');

	require('init.php');

	$sql="SELECT * FROM converse_product WHERE pid='$pid'";
	$result=mysqli_query($conn,$sql);
	$list=mysqli_fetch_all($result,MYSQLI_ASSOC);
	echo json_encode($list);