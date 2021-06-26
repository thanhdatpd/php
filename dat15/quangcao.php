<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
<script type="text/javascript">
function hide_float_right() {
    var content = document.getElementById('float_content_right');
    var hide = document.getElementById('hide_float_right');
    if (content.style.display == "none")
    {content.style.display = "block"; hide.innerHTML = '<a href="javascript:hide_float_right()"> Tắt quảng cáo [X]</a>'; }
        else { content.style.display = "none"; hide.innerHTML = '<a href="javascript:hide_float_right()">Khuyen Mai Khung 80%</a>';
    }
    }
	function myF(){
      onl.style.display = "block";
      
    }
    function un(){
        onl.style.display = "none";
    }
</script>
	
	
<style>
.float-ck { position: fixed; bottom: 300px; z-index: 9000}
* html .float-ck {position:absolute;bottom:auto;top:expression(eval (document.documentElement.scrollTop+document.docum entElement.clientHeight-this.offsetHeight-(parseInt(this.currentStyle.marginTop,10)||0)-(parseInt(this.currentStyle.marginBottom,10)||0))) ;}
#float_content_right {border: 1px solid #01AEF0;}
#hide_float_right {text-align:right; font-size: 11px;}
#hide_float_right a {background: #01AEF0; padding: 2px 4px; color: #FFF;}
</style>
<body onload="myF()">
    <div class="float-ck" style="right: 0px;bottom:100px "  >
<div id="hide_float_right">
<a href="javascript:hide_float_right()">Tắt quảng cáo[X]</a></div>
<div id="float_content_right">
<!-- Start quang cao-->
<img src="images/33.png" width="365" height="315" />
<!-- End quang cao -->
</div>
</div>
    <div id="onl" style="position: fixed; bottom: 0px; top:200px;left:400px;z-index:100;">
        <div style="backgroud-color:black; width:1000px; height=200px;">
            <a href="javascript:un()" style="color:#F00;"> Tắt quảng cáo [X]</a>
            <img src="images/huyen.png" width="1200" height="300" />
        </div>
    </div>	
</body>
</html>