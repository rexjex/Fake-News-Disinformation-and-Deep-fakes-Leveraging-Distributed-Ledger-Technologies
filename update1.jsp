<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Update Status </title>
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
	color: #000000;
}
.style4 {color: #000000}
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
<h2 class="style2" style="color:#FF0033">Update Status..</h2>
<div class="clr"></div>
<div class="post_content">



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp"%>

<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<%@ page
import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>

<%

int count=0;
ArrayList list = new ArrayList();

ServletContext context = getServletContext();

String dirName =context.getRealPath("Gallery/");

String paramname=null,image=null,cloud=null,network=null,bin = "";

FileInputStream fs=null;

File file1 = null;

String chname=(String)application.getAttribute("chname");
String nname=(String)application.getAttribute("nname");



try {
MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); 

Enumeration params = multi.getParameterNames();

int f = 0;
Enumeration files = multi.getFileNames(); 
while (files.hasMoreElements()) 
{
paramname = (String) files.nextElement();





if(paramname != null)
{
f = 1;
image = multi.getFilesystemName(paramname);
String fPath = context.getRealPath("Gallery\\"+image);
file1 = new File(fPath);
fs = new FileInputStream(file1);
list.add(fs);

String ss=fPath;
FileInputStream fis = new FileInputStream(ss);
StringBuffer sb1=new StringBuffer();
int i = 0;
while ((i = fis.read()) != -1) 
{
if (i != -1)
{
//System.out.println(i);
String hex = Integer.toHexString(i);
// session.put("hex",hex);
sb1.append(hex);


String binFragment = "";
int iHex;

for(int i1= 0; i1 < hex.length(); i1++)
{
iHex = Integer.parseInt(""+hex.charAt(i1),16);
binFragment = Integer.toBinaryString(iHex);

while(binFragment.length() < 4)
{
binFragment = "0" + binFragment;
}
bin += binFragment;

}
} 

}

} 
}
FileInputStream fs1 = null;



PreparedStatement ps=connection.prepareStatement("update news set n_image=?  where n_name='"+ nname+"' ");

ps.setBinaryStream(1, (InputStream)fs, (int)(file1.length()));




if(f == 0)
ps.setObject(10,null);
else if(f == 12)
{
fs1 = (FileInputStream)list.get(0);
ps.setBinaryStream(10,fs1,fs1.available());
} 

int x=ps.executeUpdate();
if(x>0){
%>
<h2 align="left" class="style4" ><span class="style4 style3">Updated Successfully</span> </h2>
<p>&nbsp; </p>
<p align="left"><a href="S_UpdateNews.jsp" class="style16">Back</a></p>
<%
}

}
catch (Exception e) 
{
out.println(e.getMessage());
}
%>





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

