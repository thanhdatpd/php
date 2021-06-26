
<?php 

	switch($_GET['go'])
	{
		case "home" :
		include ("home.php") ;
		break;
		
		
		case "sanpham" :
		include ("sanpham.php") ;
		break;
			case "dm" :
		include ("dm.php") ;
		break;
		
		
		case "giamgia" :
		include ("giamgia.php") ;
		break;
		
		case "thethao" :
		include ("thethao.php") ;
		break;
		
		case "thoisu" :
		include ("thoisu.php") ;
		break;
		
		case "lienhe" :
		include ("lienhe.php") ;
		break;
		
		case "dangki" :
		include ("dangki.php") ;
		break;
		
		case "xldangki" :
		include ("xldangki.php") ;
		break;
		
		case "dangnhap" :
		include ("dangnhap.php") ;
		break;
		
		case "xlylienhe" :
		include ("xlylienhe.php") ;
		break;
		
		
		case "detail_ts":
		include ("detail_ts.php");
		break;
		
		case "detail_tinkm":
		include ("detail_tinkm.php");
		break;
		
		case "detail_sp":
		include ("detail_sp.php");
		break;
		
		case "showcart":
		include ("showcart.php");
		break;
		
		case "addcart":
		include ("addcart.php");
		break;
		
		case "delcart":
		include ("delcart.php");
		break;
	
		default :
		include("home.php");
	
	}
	
?>
