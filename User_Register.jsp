<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Registration</title>
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
.style2 {color: #FF0033}
.style3 {
	font-size: 18px;
	color: #FFFF00;
	font-weight: bold;
}
.style4 {color: #000000}
.style8 {font-size: 16px}
.style9 {color: #FFFF00}
.style10 {font-weight: bold}
.style11 {font-weight: bold}
.style12 {font-weight: bold}
.style13 {font-weight: bold}
.style14 {font-weight: bold}
.style15 {font-weight: bold}
.style16 {font-weight: bold}
.style17 {font-size: 16px; color: #FFFF00; }
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
          <h2 class="style2" style="color:#FF0033">User Registration...!</h2>
          <div class="clr"></div>
		  <div class="post_content">         
              <p align="center"><img src="images/Register.jpg" width="199" height="149" />
              <form action="User_RegisterStatus.jsp" method="post" id="leavereply" enctype="multipart/form-data">
        	<table width="444" border="0" align="center">
              <tr>
                <td width="182" height="40" bgcolor="#FF0000"><div align="center" class="style13 style1 style9 style10">
                  <div align="left" class="style8">User Name </div>
                </div></td>
                <td width="252"><div align="left">
                  <input type="text" name="userid" />
                </div></td>
              </tr>
			  <tr>
                <td width="182" height="40" bgcolor="#FF0000"><div align="center" class="style13 style1 style9 style11">
                  <div align="left" class="style8">Password </div>
                </div></td>
                <td width="252"><div align="left">
                  <input type="password" name="pass" />
                </div></td>
              </tr>
			  <tr>
                <td width="182" height="40" bgcolor="#FF0000"><div align="center" class="style13 style1 style9 style12">
                  <div align="left" class="style8">Email-ID </div>
                </div></td>
                <td width="252"><div align="left">
                  <input type="text" name="email" />
                </div></td>
              </tr>
			  <tr>
                <td width="182" height="40" bgcolor="#FF0000"><div align="center" class="style1 style9 style13">
                  <div align="left" class="style8">Mobile Number  </div>
                </div></td>
                <td width="252"><div align="left">
                  <input type="text" name="mobile" />
                </div></td>
              </tr>
			  <tr>
                <td width="182" height="40" bgcolor="#FF0000"><div align="center" class="style1 style9 style14">
                  <div align="left" class="style8">Address </div>
                </div></td>
                <td width="252"><div align="left">
                  <textarea id="address" name="address" rows="3" cols="30"></textarea>
                </div></td>
              </tr>
			  <tr>
                <td width="182" height="40" bgcolor="#FF0000"><div align="center" class="style1 style9 style15">
                  <div align="left" class="style8">Date of Birth  </div>
                </div></td>
                <td width="252"><div align="left">
                  <input type="text" name="dob" />
                </div></td>
              </tr>
			  <tr>
                <td width="182" height="40" bgcolor="#FF0000"><div align="center" class="style1 style9 style16">
                  <div align="left" class="style8">Gender </div>
                </div></td>
                <td width="252"><div align="left">
                  <select id="s1" name="gender" class="text">
                    <option>--Select--</option>
                    <option>MALE</option>
                    <option>FEMALE</option>
                  </select>
                </div></td>
              </tr>
			  <tr>
                <td width="182" height="40" bgcolor="#FF0000"><div align="center" class="style13 style4 style3 style1">
                  <div align="left" class="style17">Select Profile Picture</div>
                </div></td>
                <td width="252"><div align="left">
                  <input type="file" id="pic" name="pic" class="text" />
                </div></td>
              </tr>
              
              <tr>
			    <td>&nbsp;</td>
                <td height="45">
                  <div align="left">
                    <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
                  </div></td>
              </tr>
            </table>
			<p>&nbsp;</p>
						<div align="right" class="style5"><a href="UserLogin.jsp">Back</a></div>

            </form></p>
                
                <p>&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
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
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserLogin.jsp">&raquo; Home </a></li>           
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
