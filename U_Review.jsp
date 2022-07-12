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
<title>User Review Details Page</title>
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
.style11 {color: #000000}
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
          <h2 class="style2" style="color:#FF0033">Review On News Post <span class="style2" style="color:#006666"><%=request.getParameter("nname")%> ..</h2>
          <div class="clr"></div>
		  <div class="post_content">
		  <p>&nbsp;</p>
		  <%
          
		   String nname=request.getParameter("nname");
		   String chname=request.getParameter("chname");
		   String user=request.getParameter("user");
		   int id= Integer.parseInt(request.getParameter("id"));
           
		   
		   %>
  
  <form name="s" action="U_ReviewIns.jsp?nname=<%=nname%>&chname=<%=chname%>&id=<%=id%>&user=<%=user%>" method="post"  onSubmit="return valid()"  ons target="_top">
    
	<table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr><td></td><td></td>
 						<td   width="200" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="right" class="style9"  style="margin-left:20px;">Write Review </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><textarea name="com" rows="3" cols="23"></textarea></div></td>
					
					  <td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><span style="font-size: 18px">
				      <input type="submit" value="Add Review" style="width:100px; height:35px; background-color:#FFFFFF; color:#003399;"/>
					    </span></td>
					</tr>
          </table>


	 </form>
	 
	 <p>&nbsp;</p>
	  
	  
	   <h2 class="style2" style="color:#FF0033">All User Reviews On The News Post </h2>
	
		<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#FFFFFF"><td width="127" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style5 style14 style7 style6" style="	margin-left:20px;"><strong><strong>News Image</strong></strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> News Name</strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Reviewed By</strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Reviews </strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Reviewed Date </strong></div></td>
			</tr>
			

					<%
						
						int count=0;
						try 
						{   
							   
						   	String query="select * from reviews where n_name='"+nname+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								int j=rs1.getInt(1);
								String newsname=rs1.getString(2);
								String r_user=rs1.getString(4);
								String dt=rs1.getString(6);
							    String review=rs1.getString("reviews");
								
								count++;
						
					%>
		<tr>
			<td width="50" bgcolor="#FFFFFF">
			<div class="style8 style2" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="user_Pic.jsp?picture=<%="newsimage"%>&id=<%=id%>" style="width:50px; height:50px;"  />
		    </a></div>	</td>		
									   		
			<td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
		        <%out.println(newsname);%>
			</em></strong></div></td>
			
			<%if(r_user.equalsIgnoreCase(user)){%>
			<td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em> <%out.println(r_user);%> 
 		    </em></strong></div></td>
			 
			<%}else{%>
			<td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><a href="U_UProfile.jsp?uname=<%=r_user%>&id=<%=id%>&nname=<%=nname%>&chname=<%=chname%>"> <%out.println(r_user);%> 
		    </a></em></strong></div></td>
			
			<%}%>
			    <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
		        <%out.println(review);%>
			</em></strong></div></td>
				 <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
		        <%out.println(dt);%>
			</em></strong></div></td>
</tr>
<%					
					}
					
						if(count==0){
										out.print("No User Has Reviewed On This News Post");
								}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
  
		          <p><a href="User_Main.jsp" class="style14">Back</a></p>


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