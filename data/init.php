<?php
	$conn=mysqli_connect('w.rdc.sae.sina.com.cn','wox2ozl2ym','yy5llw2lywm2h13z232wm5y1z4z5xiw05hxz55xz','app_jgzapp',3306);
//	$conn = mysqli_connect(SAE_MYSQL_HOST_M, SAE_MYSQL_USER, SAE_MYSQL_PASS,  SAE_MYSQL_DB, SAE_MYSQL_PORT);
	$sql="SET NAMES UTF8";
	mysqli_query($conn,$sql);