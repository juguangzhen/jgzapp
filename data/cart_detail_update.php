<?php
	header('Content-Type:application/json;charset=UTF-8');
	@$did=$_REQUEST['did'] or die('{"code":2,"msg":"did required"}');
	@$count=$_REQUEST['count'] or die('{"code":3,"msg":"count required"}');
	require('init.php');
	$sql="UPDATE converse_cart_detail SET count=$count WHERE did=$did";
	mysqli_query($conn,$sql);
	$output=[
		'code'=>1,
		'count'=>$count
	];
	echo json_encode($output);