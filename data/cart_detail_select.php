<?php
	header('Content-Type:application/json;charset=UTF-8');
	@$uid=$_REQUEST['uid'] or die('{"code":2,"msg":"uid required"}');
	require('init.php');
	//SQL:根据用户编号查询购物车编号
	$sql="SELECT cid FROM converse_cart WHERE userId=$uid";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	if($row===null){
		die('[]');//指定的用户编号没有购物车
	}
	$cid=$row[0];
	
	//SQL2:查询指定用户购物车中的所有商品
	$sql="SELECT pid,pname,price,pic,pmodel,did,count FROM converse_product,converse_cart_detail WHERE pid=productId AND cartId=$cid";
	$result=mysqli_query($conn,$sql);
	$list=mysqli_fetch_all($result,MYSQLI_ASSOC);
	echo json_encode($list);