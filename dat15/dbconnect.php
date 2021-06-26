<?php
// $ketnoi=mysql_connect("localhost","root","");
// if(!$ketnoi)
// 	{
// 	die('could not connect :'.mysql_error());
// 	}
// mysql_select_db("t4",$ketnoi);
// @$conn->query("SET NAMES utf8");
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "t4";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
?>