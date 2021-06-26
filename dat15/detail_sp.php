<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
$id=$_GET['id'];
$result= $conn->query("SELECT*FROM sanpham where id_sp=$id");
while($rows = mysql_fetch_array($result))
{
	?>
	<table width="700" border="0" cellspacing="0" cellpadding="0">
    <tr>
    <td width="200" height="250">< div id="anh_t"><img src="<?php echo $rows['hinhanh']?>" width="200" height="250"/></td>div </td>
    <td>
    <div id="title_gt"><?php echo $rows['tensp']?> </div>
    <div id="content_gt"><span class="style5"><?php echo number_format($rows['gia'],3)?></span> VND/1 <br>Tac Gia:<?php echo $rows['chitiet'] ?> </div>
    <a id="text" href="addcart.php?id=<?php echo $rows['id_sp']?>" >&raquo; mua hang </a></div>
    </td>
       <?php
	}
	?>
    </tr>
    <tr><td colspan="2"><hr /></td></tr>
    <tr>
    <td colspan="2">
    <div align="left"><h4>&nbsp;&nbsp;&nbsp; Cac san pham khac:</h4></div>  
    <?php
	$query="SELECT*FROM sanpham";
	$result=$conn->query($query) or die(mysql_error());
	while($rows = mysql_fetch_array($result))
	{
		?>
        <div id="tinsp">
        <a href=""></a>font></a><br/>
        <div>
        </td>
             <?php
	}
	?>
        </tr>
        </table>
   
 
</body>
</html>