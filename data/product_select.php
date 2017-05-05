<?php
	header('Content-Type:application/json;charset=UTF-8');

	@$sex=$_REQUEST['sex'] or die('{"code":2,"msg":"sex required"}');

	require('init.php');

	$sql="SELECT * FROM converse_product WHERE psex='$sex'";
	$result=mysqli_query($conn,$sql);
	$list=mysqli_fetch_all($result,MYSQLI_ASSOC);
	echo json_encode($list);