<?php
    header('Content-Type:application/json;charset=UTF-8');
    @$start=$_REQUEST['start'];
    $count=4;
    $output=[];
    if(empty($start)){
    		$start=0;
   	}
    require('init.php');

    $sql="SELECT * FROM converse_product LIMIT $start,$count";
    $result= mysqli_query($conn,$sql);

    while(true){
        $row=mysqli_fetch_assoc($result);
        if(!$row){
            break;
        }
        $output[]=$row;
    }

    echo json_encode($output);