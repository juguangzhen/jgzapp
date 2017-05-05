<?php
    header('Content-Type:application/json;charset=UTF-8');
    @$uname=$_REQUEST['uname'] or die('{"code":-2,"msg":"uname required"}');
    @$upwd=$_REQUEST['upwd'] or die('{"code":-3,"msg":"upwd required"}');
    @$v= $_REQUEST['vcode'] or die('{"code":-4, "msg":"vcode required"}');
    session_start();
    $vs = $_SESSION['vcode_in_server'];
    if(strtoupper($v)!==strtoupper($vs)){
       die('{"code":-9,"msg":"vcode invalid"}');
    }
    require('init.php');
    $sql="INSERT INTO converse_user VALUES(NULL,'$uname','$upwd')";
    $result=mysqli_query($conn,$sql);
    if($result===false){
        echo '{"code":4,"msg":"insert err","sql":"'.$sql.'"}';
    }else{
        $uid=mysqli_insert_id($conn);
        $arr=['code'=>1,'userId'=>$uid];
        echo json_encode($arr);
    }