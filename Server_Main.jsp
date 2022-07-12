<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Server Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 { color:#006666}
.style3 {color: #FF0033}

-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">Fake News, Disinformation,and Deepfakes: Leveraging Distributed Ledger Technologies and Blockchain to Combat Digital Deception and Counterfeit Reality
</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="ServerLogin.jsp"><span>News Publisher </span></a></li>
          <li><a href="UserLogin.jsp"><span>User </span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="293" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style3" style="color:#FF0033">Welcome To Channel <span class="style2"><%=(String)application.getAttribute("server")%></span> ..!</h2>
          <div class="clr"></div>
          <div class="post_content">
		  
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages"><img src="images/Admin.jpg" width="624" height="372" /></p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Server</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            
            <li><a href="Server_Main.jsp">&raquo; Home</a></li>
			<li><a href="S_AuthorizeUsers.jsp">&raquo; List of All Users and Authorize</a></li>
			<li><a href="S_AddCategory.jsp">&raquo; Add News Categories</a></li>
			<li><a href="S_AddFilter.jsp">&raquo; Add Fake Filter</a></li>
			<li><a href="S_AddNews.jsp">&raquo; Add News</a></li>
			<li><a href="S_UpdateNews.jsp">&raquo; View all news post and update</a></li>
			<li><a href="S_ViewNewsPostByQuantization.jsp">&raquo;All News post by distributed ledger technologies </a></li>
			<li><a href="S_Fake_News.jsp">&raquo;View All Fake News </a></li>
			<li><a href="S_ViewNewsPostInBlockChain.jsp">&raquo;View All News Posts in Block Chain Form </a></li>
			<li><a href="S_UserNewsTransaction.jsp">&raquo;View All Users News transactions by keyword</a></li>
			<li><a href="S_ViewProductQuantInChart.jsp">&raquo;View online product Distributed<br />
		    Ledger Technologies by chart</a></li>
			<li><a href="S_PostRankInChart.jsp">&raquo;View all news post rank in chart</a></li>
            <li><a href="ServerLogin.jsp">&raquo; Logout </a></li>           
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
