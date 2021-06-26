<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<?php include ("dbconnect.php") ?>

<body>
<div>
<h2 align="center"> MONG BẠN LIÊN HỆ VỚI CHÚNG TÔI</h2>
<table width="600" border="0">
<tr>
   <td><img src="images/qc2.jpg" /><span style="color:#F00">0836260201</span><br/><img src="../../../../Documents/Unnamed Site 2/3.png"/><span style="color:#F00">haiyen02012001@gmail.com</span><br />
   <B>facebook:</B><span style="color:#F00">TranHaiYen</span><br />
   <span> Nếu chưa có tài khoản xin vui lòng đăng kí tại đây, còn không thì thôi <a href="?go=lienhe">tại đây<a><br />
   <span> Chúng tôi rất trân trọng những ý kiến đóng góp của các bạn </span><br /></td>
   </tr>
   </table>
   <h2 align="center" > VUI LÒNG NHẬP THÔNG TIN</h2>
   <form action="xlylienhe.php" method="post">
   <table width="100%" border="0">
  <tr>
    <td>HỌ TÊN</td>
    <td><label for="tenkh"></label>
    <input type="text" name="tenkh" id="tenkh" /></td>
  </tr>
  <tr>
    <td>ĐỊA CHỈ</td>
    <td><label for="diachi"></label>
    <input type="text" name="diachi" id="diachi" /></td>
  </tr>
  <tr>
    <td>ĐIỆN THOẠI</td>
    <td><label for="dienthoai"></label>
    <input type="text" name="dienthoai" id="dienthoai" /></td>
  </tr>
  <tr>
    <td>Email</td>
    <td><label for="email"></label>
    <input type="text" name="email" id="email" /></td>
  </tr>
  <tr>
    <td>NỘI DUNG</td>
    <td><label for="ykien"></label>
    <textarea name="ykien" id="ykien" cols="45" rows="5"></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="gui" id="gui" value="Gửi" />
    <input type="submit" name="button" id="button" value="Làm Lại" /></td>
  </tr>
</table>

</body>
</html>