<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Bhandari Interiors</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/slide.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
 <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
 		<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
		<script src="js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
 <script src="js/jquery.slides.min.js"></script>

 <style type="text/css" media="screen">
 * { margin: 0; padding: 0; }
			
			body {
				background: #282828;
				font: 62.5%/1.2 Arial, Verdana, Sans-Serif;
				padding: 0 20px;
			}
			
			h1 { font-family: Georgia; font-style: italic; margin-bottom: 10px; }
			
			h2 {
				font-family: Georgia;
				font-style: italic;
				margin: 25px 0 5px 0;
			}
			
			p { font-size: 1.2em; }
			
			ul li { display: inline; }
			
			.wide {
				border-bottom: 1px #000 solid;
				width: 4000px;
			}
			
			.fleft { float: left; margin: 0 20px 0 0; }
			
			.cboth { clear: both; }
			
			/*#main {
				background: #fff;
				margin: 0 auto;
				padding: 30px;
				width: 1000px;
			}*/
 </style>
</head>

<body>

<div class="header-back">
<div class="logo-head">
<div class="logo">
<a href="index.html"><img src="images/logo.gif" alt="" border="0" /></a>

<!-- Div End Logo -->
Welcome Guest!!
</div>

<div class="user">
<table>
	<tr>
		<td>UserName</td>
		<td><input type="text"/></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password"/></td>
	</tr>
	<tr>
		<td></td>
		<td colspan="0" align="right"><input type="submit" name="login" /></td>
	</tr>
</table>
<!-- End Div user -->
</div>


<div class="right-nav">
<ul>
<li><a class="current">Home</a></li>
 <li><a href="about-us.html">About Us</a></li>
<li><a href="gallery">Gallery</a></li>
 <li><a href="gallery">Services</a></li>
 <li><a href="support.html">Support</a></li>
  <li><a href="contact-us.html	">Contact Us</a></li>
</ul>

</div>


<!-- Div- ENd logo-head-->
</div>


<div class="header">
<div id="main">
			<h1>prettyPhoto</h1>
			
			<p>This page has been made for testing purpose only. It covers all the basic things you can handle in prettyPhoto.</p>
	
			<p>For complete documentation, please refer to the official website: <a href="http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/">http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/</a></p>
	
			<h2>Gallery</h2>
			<ul class="gallery clearfix">
				<li><a href="images/fullscreen/1.JPG?lol=lol" rel="prettyPhoto[gallery1]" title="You can add caption to pictures. You can add caption to pictures. You can add caption to pictures."><img src="images/thumbnails/t_1.jpg" width="60" height="60" alt="Red round shape" /></a></li>
				<li><a href="images/fullscreen/2.jpg" rel="prettyPhoto[gallery1]"><img src="images/thumbnails/t_2.jpg" width="60" height="60" alt="Nice building" /></a></li>
				<li><a href="images/fullscreen/3.jpg" rel="prettyPhoto[gallery1]"><img src="images/thumbnails/t_3.jpg" width="60" height="60" alt="Fire!" /></a></li>
				<li><a href="images/fullscreen/4.jpg" rel="prettyPhoto[gallery1]"><img src="images/thumbnails/t_4.jpg" width="60" height="60" alt="Rock climbing" /></a></li>
				<li><a href="images/fullscreen/5.jpg" rel="prettyPhoto[gallery1]"><img src="images/thumbnails/t_5.jpg" width="60" height="60" alt="Fly kite, fly!" /></a></li>
				<li><a href="images/fullscreen/6.jpg" rel="prettyPhoto[gallery1]"><img src="images/thumbnails/t_2.jpg" width="60" height="60" alt="Nice building" /></a></li>
			</ul>

			<h2>Gallery 2</h2>
			<ul class="gallery clearfix">
				<li><a href="images/fullscreen/3.jpg" rel="prettyPhoto[gallery2]" title="How is the description on that one? How is the description on that one? How is the description on that one? "><img src="images/thumbnails/t_3.jpg" width="60" height="60" alt="This is a pretty long title" /></a></li>
				<li><a href="images/fullscreen/4.jpg" rel="prettyPhoto[gallery2]" title="Description on a single line."><img src="images/thumbnails/t_4.jpg" width="60" height="60" alt="" /></a></li>
				<li><a href="images/fullscreen/5.jpg" rel="prettyPhoto[gallery2]"><img src="images/thumbnails/t_5.jpg" width="60" height="60" alt="" /></a></li>
				<li><a href="images/fullscreen/1.jpg" rel="prettyPhoto[gallery2]"><img src="images/thumbnails/t_1.jpg" width="60" height="60" alt="" /></a></li>
				<li><a href="images/fullscreen/2.jpg" rel="prettyPhoto[gallery2]"><img src="images/thumbnails/t_2.jpg" width="60" height="60" alt="" /></a></li>
			</ul>

			<h2>API Call</h2>
			<script type="text/javascript" charset="utf-8">
				api_gallery=['images/fullscreen/1.JPG','images/fullscreen/2.jpg','images/fullscreen/3.JPG'];
				api_titles=['API Call Image 1','API Call Image 2','API Call Image 3'];
				api_descriptions=['Description 1','Description 2','Description 3'];
			</script>
			<p><a href="#" onclick="$.prettyPhoto.open(api_gallery,api_titles,api_descriptions); return false">API call</a></p>

			<h2>Picture alone</h2>
			<ul class="gallery clearfix">
				<li><a href="images/fullscreen/2.jpg" rel="prettyPhoto" title="&lt;a href=&#x27;http://www.google.ca&#x27; target=&#x27;_blank&#x27; &gt;This will open Google.com in a new window&lt;/a&gt;"><img src="images/thumbnails/t_2.jpg" width="60" height="60" alt="Picture alone 1" /></a></li>
			</ul>
	
			<h2>Unusual sizes</h2>
			<ul class="gallery clearfix">
				<li><a href="images/fullscreen/wide.gif" rel="prettyPhoto[unusual]">Wide image (3000 x 1500)</a></li>
				<li><a href="images/fullscreen/high.gif" rel="prettyPhoto[unusual]">High image (1500 x 3000)</a></li>
				<li><a href="images/fullscreen/huge.gif" rel="prettyPhoto[unusual]">Huge image (3000 x 3000)</a></li>
			</ul>
	
			<h2>Iframe</h2>
			<ul class="gallery clearfix">
				<li><a href="http://www.google.com/search?ie=UTF-8&amp;oe=UTF-8&amp;q=prettyphoto&amp;iframe=true&amp;width=100%&amp;height=100%" rel="prettyPhoto[iframe]">Google.ca</a></li>
				<li><a href="http://www.facebook.com?iframe=true&amp;width=600&amp;height=300" rel="prettyPhoto[iframe]">Facebook</a></li>
				<li><a href="http://nmfe.co?iframe=true&amp;width=300&amp;height=200" rel="prettyPhoto[iframe]">My site</a></li>
			</ul>
	
			<h2>AJAX</h2>
			<ul class="gallery clearfix">
				<li><a href="xhr_response.html?ajax=true&amp;width=400&amp;height=160" rel="prettyPhoto[ajax]">Sample AJAX</a></li>
			</ul>
	
			<h2>Mixed gallery</h2>
			<ul class="gallery clearfix">
				<li><a href="http://www.google.ca?iframe=true&amp;width=1000&amp;height=500" rel="prettyPhoto[mixed]">Google.ca</a></li>
				<li><a href="http://trailers.apple.com/movies/disney/tronlegacy/tronlegacy-tsr1_r640s.mov?width=640&height=272" rel="prettyPhoto[mixed]" title="Tron!"><img src="images/thumbnails/quicktime-logo.gif" alt="Tron teaser" width="60" /></a></li>
				<li><a href="images/fullscreen/5.jpg" rel="prettyPhoto[mixed]"><img src="images/thumbnails/t_5.jpg" width="60" height="60" alt="" /></a></li>
				<li><a href="http://www.adobe.com/products/flashplayer/include/marquee/design.swf?width=792&amp;height=294" rel="prettyPhoto[mixed]" title="Flash 10 demo"><img src="images/thumbnails/flash-logo.png" width="60" alt="Flash 10 demo" /></a></li>
			</ul>
	
			<h2>Inline content</h2>
			<ul class="gallery clearfix">
				<li><a href="#inline_demo" rel="prettyPhoto[inline]">Inline content 1</a></li>
				<li><a href="#inline_demo2" rel="prettyPhoto[inline]">Inline content 2</a></li>
				<li><a href="#inline_demo3" rel="prettyPhoto[inline]">Inline content 3</a></li>
			</ul>
			
			<br /><br />
		
			<script type="text/javascript" charset="utf-8">
			$(document).ready(function(){
				$("area[rel^='prettyPhoto']").prettyPhoto();
				
				$(".gallery:first a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'light_square',slideshow:3000, autoplay_slideshow: true});
				$(".gallery:gt(0) a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
		
				$("#custom_content a[rel^='prettyPhoto']:first").prettyPhoto({
					custom_markup: '<div id="map_canvas" style="width:260px; height:265px"></div>',
					changepicturecallback: function(){ initialize(); }
				});

				$("#custom_content a[rel^='prettyPhoto']:last").prettyPhoto({
					custom_markup: '<div id="bsap_1259344" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6"></div><div id="bsap_1237859" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6" style="height:260px"></div><div id="bsap_1251710" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6"></div>',
					changepicturecallback: function(){ _bsap.exec(); }
				});
			});
			</script>

			</div>

</div>
<!-- Div End header-back -->
</div>


<div id="body-part">
<div class="top-body">
<h1><span>Welcome</span> to Bhandari Interiors</h1>
<h2>Making Quality Interiors since 1999</h2>
<p> We at Bhandari Interiors believe in making quality homes at affordable price.</p>

</div>


<div class="img-box"><img src="images/img_01.gif" alt="" /></div>
<div style="clear:both;"></div>
<div class="mid-body">
<ul>
<li><img src="images/ls-1.gif" alt="" /></li>
<li><img src="images/ls-2.gif" alt="" /></li>
<li><img src="images/ls-3.gif" alt="" /></li>
<li><img src="images/ls-4.gif" alt="" /></li>
<li class="fnal"><img src="images/ls-5.gif" alt="" /></li>
</ul>

<h2>Services that we provide</h2>
<p> We provide all the services which cater your varied interior needs.</p>

</div>


<div id="footer">
<b><a href="#">Terms of Use</a> | <a href="privacy.html">Privacy Statement</a> </b>
&copy; Bhandari Interiors. All rights reserved
</div>

</div>


</body>
</html>
