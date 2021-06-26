<?php include("dbconnect.php");
?>
<body">

<div id="slider">
<?php include ("quangcao.php")?>
<?php include("slider.php")?>
</div>
<table id="home" border="0" cellpadding="0px" cellspacing="0px">
 <tr>
<td colspan="2"><h1>NEW BOOKS</h1></td></tr> 		
<tr >
<?php
   
         $query="SELECT * FROM sanpham" ;
         $kq=$conn->query($query) or die(error());
         $i=1;
         echo"<table width='700' border='0' cellpadding='0px' cellspacing='0px'>";
         echo"<tr>";
         while($r=mysqli_fetch_array($kq))
         {
      echo"<td width='230'align='center' bgcolor='#FFFFFF'><img src=".$r['hinhanh']." width='150' height='200' ><br><a href='?go=detail_sp&id=".$r['id_sp']."' id='text_lq'>".$r['tensp']."</a><br><b>Giá:</b> ".$r['gia'].".000 VNĐ</td>";

	  					if($i%3==0)
	 					 {
		 					 echo"</tr><tr>";
	  					 }
						  $i=$i+1; 
 						 }
						 ?>

  </tr>
</table>
</body>

