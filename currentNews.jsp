<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Current News Post</title>
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
.style13 {color: #6592d1}
.style15 {
	color: #FF3300;
	font-size: 16px;
	font-weight: bold;
}
.style16 {
	color: #CC6600;
	font-size: 16px;
	font-weight: bold;
}
.style17 {color: #FFFFFF}
.style18 {color: #FFFF00}
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
          <h2 class="style2" style="color:#FF0033">All News By Distributed Ledger Technologies..</h2>
          <div class="clr"></div>
		  <div class="post_content">
		  <p>&nbsp;</p>
          
	  
	  	    
	  	    <p>
	  	      <%
			  
	String s11="",s12="",s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",qd="",nd="";
	int i=0,j=0,count=0,rank=0,k=0;
	try
	{		   
			  
			  
		
			  
			  
			  
			  
		
			Date now1 = new Date();
			SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
			String strCurrDate = sdf1.format(now1);
			Date date2 = new SimpleDateFormat("dd/MM/yyyy").parse(strCurrDate);
			
		
			 						  				  																			  			 
			%>
            </p>
			<p class="style5 style8 style15">	Current Trending News....  </p>
	  	    <table width="650" border="0">
				  
				 
                      
					  <td width="205" bgcolor="#FF0000"><div align="center" class="style17"><span class="style3 "><b>News Date</b></span></div></td>
    				  <td width="178" bgcolor="#FF0000"><div align="center" class="style17"><b>Channel Name</b></div></td>
				   	  <td width="178" bgcolor="#FF0000"><div align="center" class="style17"><b>News Name</b></div></td>
  					 
      				  <td width="293" bgcolor="#FF0000"><div align="center" class="style17"><span class="style3 "><b>Description</b> </span></div></td>
   					  <td width="178" bgcolor="#FF0000"><div align="center" class="style17"><b>News Image</b></div></td>
	  				  
	  				  <td width="205" bgcolor="#FF0000"><div align="center" class="style17"><span class="style3 "><b>News Place</b></span></div></td>
	  				  
                   </tr>
				 
				  <%
					  
						   String query="select * from news where quant_date>='"+strCurrDate+"' order by n_date desc "; 
				           Statement st=connection.createStatement();
				           ResultSet rs=st.executeQuery(query);
						while ( rs.next() )
					   {
						i=rs.getInt(1);
						s1=rs.getString(8);
						s2=rs.getString(3);
						s3=rs.getString(10);
						s4=rs.getString(5);
						s5=rs.getString(7);
						s6=rs.getString(9);
						
						
						
						count++;
						 
			   
					 %>
							   <tr>
      
	  <td height="107"><div align="center" style="color:#FF0000"><b><%=s5%></b></div></td>
    <td><div align="center" style="color:#CC0066"><%=s1%></div></td>
	<td><div align="center" style="color:#FF6600"><%=s2%></div></td>
   
    <td><div align="center" style="color:#000000"><%=s4%></div></td>
     <td><div align="center">
      <input  name="image" type="image" src="user_Pic.jsp?picture=<%="newsimage"%>&id=<%=i%>" width="100" height="100" alt="Submit">
      </input></div>	 </td>
		  	   
			   <td><div align="center" style="color:#000000"><%=s6%></div></td>
  </tr>
							
	     <%
					 }
				
			       %></table> 				   
	 				   
	<p>&nbsp;</p>
				
				<p class="style5 style8 style16">	Older News.....   </p>
		        <table width="650" border="0">
				  
				 
                      
					  <td width="205" bgcolor="#FF0000"><div align="center" class="style18"><span class="style3 "><b>News Date</b></span></div></td>
    				  <td width="178" bgcolor="#FF0000"><div align="center" class="style18"><b>Channel Name</b></div></td>
				   	  <td width="178" bgcolor="#FF0000"><div align="center" class="style18"><b>News Name</b></div></td>
  				
      				  <td width="293" bgcolor="#FF0000"><div align="center" class="style18"><span class="style3 "><b>Description</b> </span></div></td>
   					  <td width="178" bgcolor="#FF0000"><div align="center" class="style18"><b>News Image</b></div></td>
	  				  
	  				  <td width="205" bgcolor="#FF0000"><div align="center" class="style18"><span class="style3 "><b>News Place</b></span></div></td>
	  				  
                   </tr>
				 
				  <%
					  
						   String query1="select * from news where quant_date<'"+strCurrDate+"' order by n_date desc "; 
				           Statement st1=connection.createStatement();
				           ResultSet rs1=st1.executeQuery(query1);
						while ( rs1.next() )
					   {
						i=rs1.getInt(1);
						s1=rs1.getString(8);
						s2=rs1.getString(3);
						s3=rs1.getString(10);
						s4=rs1.getString(5);
						s5=rs1.getString(7);
						s6=rs1.getString(9);
						
						
						
						
						 count++;
			   
					 %>
							   <tr>
      
	  <td><div align="center" style="color:#FF0000"><b><%=s5%></b></div></td>
    <td><div align="center" style="color:#CC0066"><%=s1%></div></td>
	<td><div align="center" style="color:#FF6600"><%=s2%></div></td>
    
    <td><div align="center" style="color:#000000"><%=s4%></div></td>
     <td><div align="center">
      <input  name="image" type="image" src="user_Pic.jsp?picture=<%="newsimage"%>&id=<%=i%>" width="100" height="100" alt="Submit">
      </input></div>	 </td>
		  	   
			   <td><div align="center" style="color:#000000"><%=s6%></div></td>
  </tr>
							
	     <%
					 }
			
			       %></table>		
				   <p>&nbsp;</p>
				<% 


			
			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
					
					
        	
		<p align="left"><a href="User_Main.jsp" class="style13">Back</a></p>
		
		
	 
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
            <li><a href="UserLogin.jsp">Log Out </a></li>      
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