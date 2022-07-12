<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attach video</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">
function valid()
{

var na3=document.s.file.value;
if(na3=="")

{
alert("Please Choose Video File");
document.s.file.focus();
return false;
}
}    
</script>
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
    </script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {color: #FF0033}
.style10 {font-size: 14px}
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
          <h2 class="style2" style="color:#FF0033">Added News Details ..</h2>
          <div class="clr"></div>
		  <div class="post_content">
		  	<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>

<%
		
		
            String category=request.getParameter("category");
			String newsname=request.getParameter("newsname");
			String about=request.getParameter("about");
			String description=request.getParameter("text");
			String publisher=request.getParameter("publisher");
			String date=request.getParameter("date");
			String year=request.getParameter("year");
			String quantdate=request.getParameter("quantdate");
			String cname=request.getParameter("cname");
			String place=request.getParameter("place");
			
			
			application.setAttribute("category",category);
			application.setAttribute("newsname",newsname);
			application.setAttribute("about",about);
			application.setAttribute("description",description);
			application.setAttribute("publisher",publisher);
			application.setAttribute("date",date);
			application.setAttribute("year",year);
			application.setAttribute("quantdate",quantdate);
			application.setAttribute("cname",cname);
			application.setAttribute("place",place);
			
			
			
			
		
			
%>
<style type="text/css">
<!--
.style1 {color: #666666}
-->
</style>


           <form name="s" action="S_AddNews2.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">	
	  
             <table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5 style10" style="margin-left:20px;"><span class="style6">Category</span></span></div></td>
						<td width="100" height="57"><div align="center" class="style59"><%=application.getAttribute("category")%></td>
					</tr><tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5 style10" style="margin-left:20px;"><span class="style6">News Name</span></span></div></td>
						<td height="57"><div align="center" class="style59"><%=application.getAttribute("newsname")%></td>
					</tr>
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style6" style="margin-left:20px;">News About </span></div></td>
						<td height="57"><div align="center" class="style59"><%=application.getAttribute("about")%></td>
					</tr>
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style6" style="margin-left:20px;">Description </div></td>
						<td height="57"><div align="center" class="style59"><%=application.getAttribute("description")%></td>
					</tr>
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style6" style="margin-left:20px;">Publisher</div></td>
						<td height="57"><div align="center" class="style59"><%=application.getAttribute("publisher")%></td>
					</tr>
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style6" style="margin-left:20px;">News Date</div></td>
						<td height="57"><div align="center" class="style59"><%=application.getAttribute("date")%></td>
					</tr>
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style6" style="margin-left:20px;">News Year</div></td>
						<td height="57"><div align="center" class="style59"><%=application.getAttribute("year")%></td>
					</tr>
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style6" style="margin-left:20px;">News Year</div></td>
						<td height="57"><div align="center" class="style59"><%=application.getAttribute("quantdate")%></td>
					</tr>
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style6" style="margin-left:20px;">News Channel Name</div></td>
						<td height="57"><div align="center" class="style59"><%=application.getAttribute("cname")%></td>
					</tr>
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style6" style="margin-left:20px;">News Place</div></td>
						<td height="57"><div align="center" class="style59"><%=application.getAttribute("place")%></td>
					</tr>
					
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><input type="submit" value="Upload" style="width:100px; height:35px; background-color:#999999; color:#003399;"/>
					<input type="reset" name="Reset" style="width:100px; height:35px; background-color:#999999; color:#003399;"/></td></tr></div>
	         </table>
          </form>		  
		  
		  
		  
		        <div align="center">
		          <p><a href="AddProductVideo.jsp" class="style14">Back</a></p>
	            </div>
				
				
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
          <h2 class="star"><span>Server</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="Server_Main.jsp">&raquo; Home </a></li>          
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