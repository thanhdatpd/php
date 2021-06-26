<?php include("dbconnect.php")?>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>

<div id="top"><img src="images/icon3.gif" align="left" width="22" height="22"> SẢN PHẨM </div>
<div id="content">
<?php 
if (isset($_GET['pageno'])) {
   $pageno = $_GET['pageno'];
} else {
   $pageno = 1;
} //Nếu $_GET['pageno'] đã được thiết lập trên URL thì gán cho $pageno giá trị của $_GET['pageno'], ngoài ra thì $pageno = 1

#### Xác định tổng số dòng trong database
$query = "SELECT count(*) FROM sanpham";//Nội dung query (đếm dòng)
$result = $conn->query($query);//Thực hiện query với nội dung của $query
$query_data = mysql_fetch_row($result);//Đếm tổng số dòng chính xác
$numrows = $query_data[0]; //Tổng dòng

#### Tỉnh tổng số trang = [tổng dòng] chia cho [số dòng / 1 trang]
$rows_per_page = 3;//Số dòng trong 1 trang
$lastpage      = ceil($numrows/$rows_per_page);//Tỉnh tổng số trang

#### Các nguyên tắc dành cho $pageno
$pageno = (int)$pageno;//$pageno phải là số nguyên
if ($pageno > $lastpage) {
   $pageno = $lastpage;
}//Nếu $pageno lớn hơn tổng trang thì gán cho nó giá trị của tổng trang (bắt buộc phải =< tổng trang)
if ($pageno < 1) {
   $pageno = 1;
}//nếu $pageno < 1 thì gán cho nó giá trị là 1 (bắt buộc >= 1)

#### Thiết lập giới hạn trong query (LIMIT)
$limit = 'LIMIT ' .($pageno - 1) * $rows_per_page .',' .$rows_per_page;
$query = "SELECT * FROM sanpham $limit";
$data = $conn->query("$query");
if(mysql_num_rows($data)> 0)
{
while($rowsp = mysql_fetch_array($data))
  {
?>
<table width="700" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="200" height="220" align="right" id="anh_sp"><img src="<?php echo $rowsp['hinhanh']?>" align="left" width="180px;" height="200" border="0"/></td>
    <td width="500" height="220"><a style="color:#60F; font-size:18px;" href="?go=detail_sp&id=<?php echo $rowsp['id_sp']?>" >  <?php echo $rowsp['tensp']?> </a><br />
Tác Giả:<span style="color:#09F"><b><?php echo $rowsp['tacgia']?></b><br />
<span style="color:#F00">Giá :<?php echo number_format($rowsp['gia'],3) ?></span> VNĐ<br /> 
<a id="text_ct" href="addcart.php?id=<?php echo $rowsp['id_sp']?>" > &raquo; Mua hàng </a>
<a id="text_ct" href="?go=detail_sp&id=<?php echo $rowsp['id_sp']?>" >  &raquo;Chi tiết &nbsp; &nbsp;</a>
	</td>
  </tr>
  <tr><td colspan="2"><?php echo "<hr>"?></td></tr>
</table>


<?php
}
}
if ($pageno == 1) {
   echo " First Prev ";
} else {
   echo " <a href='?go=sanpham&pageno=1'>First</a> ";
   $prevpage = $pageno-1;
   echo " <a href='?go=sanpham&pageno=$prevpage'>Prev</a> ";
} // if

echo " $pageno / $lastpage ";

if ($pageno == $lastpage) {
   echo " Next Last ";
} else {
   $nextpage = $pageno+1;
   echo " <a href='?go=sanpham&pageno=$nextpage'>Next</a> ";
   echo " <a href='?go=sanpham&pageno=$lastpage'>Last</a> ";
   
}
?>

</div>
