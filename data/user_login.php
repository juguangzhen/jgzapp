<?php
	header('Content-Type:application/json;charset=UTF-8');
	@$uname=$_REQUEST['uname'] or die('["uname !"]');
	@$upwd=$_REQUEST['upwd'] or die('upwd !');
	@$v= $_REQUEST['vcode'] or die('{"code":-4, "msg":"vcode required"}');
	session_start();
	$vs = $_SESSION['vcode_in_server'];
	if(strtoupper($v)!==strtoupper($vs)){
	   die('{"code":-9,"msg":"vcode invalid"}');
	}
	require('init.php');
	$sql="SELECT * FROM converse_user WHERE uname='$uname' AND upwd='$upwd'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_assoc($result);
	if($row===null){
		$arr=['code'=>2,'msg'=>'用户名或密码错误'];
	}else{
		$arr=['code'=>1,'uname'=>$uname,'uid'=>$row['uid']];
	}
	echo json_encode($arr);