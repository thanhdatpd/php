<?php include("dbconnect.php") ?>
<?php
$tekh =$_POST[tenkh];
$diachi =$_POST[diachi];
$dienthoai =$_POST[dienthoai];
$email =$_POST[email];
$ykien =$_POST[ykien];
$result =$conn->query("INSERT INTO lienhe (tenkh,diachi,dienthoai,email,ykien) VALUES ('$tenkh', '$diachi', '$dienthoai', '$email', '$ykien')");
echo "<script>alert('Xin cảm ơn quý khách đã đóng góp ý kiến với chúng tôi.');location='index.php';</script>"
?>
