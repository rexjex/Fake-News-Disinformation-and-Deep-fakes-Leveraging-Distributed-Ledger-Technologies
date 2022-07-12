<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
<%@ page import ="java.math.BigInteger" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View all new post</title>
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
.style13 {font-size: 14px}
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
          <h2 class="style2" style="color:#FF0033">Search News By Hash Code..</h2>
          <div class="clr"></div>
		  <div class="post_content">
		  

<p>
			    <form action="U_ViewNewsHashCode.jsp" method="post">
                <table width="550" border="0"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				
				
				<%
			try{	
			    String nname="",hash_Code="";
				
				ArrayList a1=new ArrayList();
				String str = " select * from news ";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(str);
				while(rs.next())
				{
				nname = rs.getString(3);
				
				
				
				String str1 = "Select * from news where n_name='"+nname+"' ";
				Statement st1 = connection.createStatement();
				ResultSet rs1 = st1.executeQuery(str1);
				if(rs1.next())
				{
				a1.add(nname+(" ")+rs1.getString(13));
				}
				}
				%>
				
				<tr>
					  <td  width="230" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style3 style7 style13" style="margin-left:20px;"><strong> Select The Hash_Code </strong></div></td>
					  <td  width="295" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;">
  
				          
					      
        <select id="s1" name="title+hash_Code">
         <option>--Select--</option>
        <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
           <option><%= a1.get(i)%></option>
           
           <%}%>
        </select>
		</div>
		
			             
                      </td>  
			             
					 <td width="1"></td>
				
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input type="submit" value="View" style="width:100px; height:25px; background-color:#000000; color:#FFFFFF;"/>
&nbsp;&nbsp;</td></tr></div>
			</table>
				</form>
				 <p>
                   <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
                 </p>
				 </p>
				 
				 <p>&nbsp;</p>
                <p align="left" class="style3"><a href="User_Main.jsp">Back</a></p>
				
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
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="User_Main.jsp">&raquo; Home </a></li>          
			<li><a href="UserLogin.jsp">&raquo; Logout </a></li> 
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