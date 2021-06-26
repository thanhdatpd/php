<?php
$id=$_GET['id'];
$result= $conn->query("SECLECT*FROM sanpham where id_sp=$id");
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
    </tr>
    <tr><td colspan="2"><hr /></td></tr>
    <tr>
    <td colspan="2">
    <div align="left"><h4>&nbsp;&nbsp;&nbsp; Cac sach khac:</h4></div>
    
    <?php
	$query="SECLECT*FROM sanpham";
	$result=$conn->query($query) or die(mysql_error());
	while($rows = mysql_fetch_array($result))
	{
		?>
        <div id="tinsp">
        <a href=""> &bull;<?php echo $rowmh['tensp']?></a>font></a><br/>
        <div>
        </td>
        </tr>
        </table>
        <?php
	}
	?>
    
	
    