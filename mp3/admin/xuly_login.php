<?php 
	session_start();
	include("config.php");
	$username =mysql_real_escape_string($_POST['username']);
	$password = ($_POST["password"]);
	$sql=mysql_query("select*from user where username='$username' and password='$password'");
	$row=mysql_num_rows($sql);
	$arr=mysql_fetch_array($sql);
	if($row==0)
	{
		echo '<script type="text/javascript"> alert("Ten dang nhap hoac mat khau sai"); history.go(-1)</script>';
		header('location:index.php');
	}
	elseif ($arr['id_group']!=1)
	{
		echo '<script type="text/javascript"> alert("Nguoi dung khong the vao trang nay!"); history.go(-1)</script>';
	}
	elseif ($arr['id_group']=1)
	{
		$_SESSION['idadmin']    = $arr['id'];
		$_SESSION['user']       = $arr['username'];
		$_SESSION['pass']       = $arr['password'];
		$_SESSION['name']       = $arr['name'];
		$_SESSION['permission'] = $arr['permission'];
		$_SESSION['id_group']   = $arr['id_group'];
		header("location:index.php");
	}
	
?>