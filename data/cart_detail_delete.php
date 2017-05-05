<?php
	header('Content-Type:application/json;charset=UTF-8');
	@$did=$_REQUEST['did'] or die('{"code":2,"msg":"did required"}');
	require('init.php');
	$sql="DELETE FROM converse_cart_detail WHERE did=$did";
	mysqli_query($conn,$sql);
	$output=[
		'code'=>1
	];
	echo json_encode($output);