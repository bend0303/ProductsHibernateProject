<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
<meta charset="UTF-8" />
<title>Bulletproof CSS Sliding Doors | Azadcreative.com</title>
		
<meta name="description" content="" />


<link rel="stylesheet" type="text/css" media="all" href="CSS/menuCSS.css" />
<script type="text/javascript" src="http://azadcreative.com/wp-content/themes/Instinct/javascript/jquery.js"></script>
				
<script type="text/javascript">

$(function() {

	$(".navigation ul li").hover(function() {
		$(this).addClass("hover");
	}, function() {
		$(this).removeClass("hover");
	});
	
	$(".navigation ul li").click(function() {
		$(".navigation ul li").removeClass("selected");		
		$(this).addClass("selected");
	});

});

</script>

</head>
<body>

<div id="topDiv">
<table style="width: 800px; height: 130px;">
<tr>
<td  id="headerTable">
	<div id="wrapper" class="hfeed">
		<div class="navigation">
		<ul>
			<li class="home selected"><a href="javascript:;"><span>Homepage</span></a></li>
			<li class="products"><a href="javascript:;"><span>Products Table</span></a></li>
			<li class="contact"><a href="javascript:;"><span>Add Product</span></a></li>
			<li class="contact"><a href="javascript:;"><span>Contact Us</span></a></li>
		</ul>
		</div>
		
	</div>
</td>
</tr>

</table>
</div>
</body>
</html>