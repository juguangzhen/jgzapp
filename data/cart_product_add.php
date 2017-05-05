<?php
	header('Content-Type:application/json;charset=UTF-8');
	@$uid=$_REQUEST['uid'] or die('{"code":2,"msg":"uid required"}');
	@$pid=$_REQUEST['pid'] or die('{"code":3,"msg":"pid required"}');
	@$count=$_REQUEST['count'] or die('{"code":4,"msg":"count required"}');
	@$size=$_REQUEST['size'] or die('{"code":5,"msg":"size required"}');
	require('init.php');

	$sql="SELECT cid FROM converse_cart WHERE userId='$uid'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	if($row!==null){	
		$cid=$row[0];
	}else{
		$sql="INSERT INTO converse_cart VALUES(NULL,'$uid')";
		mysqli_query($conn,$sql);
		$cid=mysqli_insert_id($conn);
	}
	$sql="SELECT * FROM converse_cart_detail WHERE cartId=$cid AND productId=$pid";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_assoc($result);
	if($row!==null){
		$did=$row['did'];
		$coun=intval($row['count']);
		$coun=$coun+$count;
		$sql="UPDATE converse_cart_detail SET count=$coun WHERE did=$did";
		mysqli_query($conn,$sql);
	}else{
		$sql="INSERT INTO converse_cart_detail VALUES(NULL,$cid,$pid,$count)";
		mysqli_query($conn,$sql);
		$count=$count;
		$did=mysqli_insert_id($conn);
	}
	$output=[
		'code'=>1,
		'did'=>$did,
		'count'=>$count
	];
	echo json_encode($output);