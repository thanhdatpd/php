<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Giảm Giá</title>
</head>

<body>
<table width="750" border="0">
<?php
$query="select * from tinkm";
$kq=$conn->query($query) or die(error());
while($rowkm=mysql_fetch_array($kq))
{
?>
    <tr>
    <td><img src="<?php echo $rowkm['anh_km']?>" align="left" width="180px";"</td>
    <td><span style="color:#33F">Ten San Pham:<span><a style="color:#FFO; font-size:24px;" href=""><?php echo $rowkm['ten_km']?></a><br>
    <span style="color:#33F>Ten San Pham:</span>Gia Ban:<b style="color:#0FF;"><?php echo $rowkm['giaban']?>.000vnd</b><br />
    <span style="color:#00F">Ten San Pham:</span>Giam Gia:<b style="color:#066";"><?php echo $rowkm['giamgia']?></b>
<?php
}
?>
</td>
</tr>
</table>
</body>
</html>