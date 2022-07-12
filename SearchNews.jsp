<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Details of news post</title>
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
.style12 {color: #660000}
.style13 {color: #990033}
.style14 {color: #FF0000}
.style16 {color: #CC3333}
.style17 {color: #FF0033; font-size: 24px; }
.style18 {font-size: 18px}
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
          <h2 class="style17" style="color:#FF0033">Search News By Keyword..</h2>
          <div class="clr"></div>
		  <div class="post_content">
		  
		  <form action="SearchNews.jsp" method="post" id="leavereply">
                    <p>&nbsp;</p>
                    <table align="center" style="margin:0 0 0 30px;">
                      <tr>
                        <td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="center" class="style82 style7 style14" style="color:#FF3300">Enter  Keyword</div>
                            </div>
                        </div></td>
                        <td width="152"><div align="left">
                            <input type="text" name="keyword" />
                        </div></td>
                        <td width="155"><input name="submit" type="submit" style="width:50px; height:25px;" value="GO"/></td>
                      </tr>
                      <tr>
                        <td colspan="3"><div class="style2">
                            <div align="center" class="style8 style12"> ( searching content Based on News Description)</div>
                        </div></td>
                      </tr>
                    </table>
			        <p class="style44">&nbsp;</p>
              

              <p align="center"><a href="User_Main.jsp" class="style11">Back</a></p>
          </form>
        </div>
          <div class="clr"></div>
      
	  <div class="post_content">
          <h2 class="style17 style18" style="color:#FF0033">Nearest Neighbour Searched News Data By Distributed Ledger Technologies .. </h2>
          <p>
              <%
  String input="",l_Input="",nname="",desc="",desc1="",chname="",about="",ndate=""; 
			int i=0,j=0,k=0,a1=0,a11=0,rank=0;

try
{	
						String user = (String)application.getAttribute("user");
								
								
								input= request.getParameter("keyword");
								if(!input.equals(""))	
								{
								
								l_Input = input.toLowerCase();
		
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
								 
								Date now1 = new Date();
			SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
			String strCurrDate = sdf1.format(now1);
			
			
			
			
								String str = "select * from news where quant_date>='"+strCurrDate+"' order by n_date desc ";
								Statement st=connection.createStatement();
								ResultSet rs = st.executeQuery(str);
								
								while(rs.next())
								{
								    nname = rs.getString(3);
									chname = rs.getString(8);
									about = rs.getString(4);
									desc = rs.getString(5);  
								    rank   = rs.getInt(11);
									 ndate = rs.getString(7);
								
									
								
									desc1 = desc.toLowerCase(); 
									 
									if (desc1.contains(l_Input))
									{
 			
 		  
												
						if(a1==0)
						{
						
						String str2 = "insert into searchtransaction (user,nc_name,n_name,keyword,hash_code,date) values('"+user+"','"+chname+"','"+nname+"','"+input+"','"+"No"+"','"+dt+"')";
		connection.createStatement().executeUpdate(str2);
									%>
            </p>
				  <p>&nbsp;</p>
				  <table width="506" border="1" align="center">
              <tr>
                <td colspan="4" align="center" class="style8 style13 style18">Current Trending News (Live News) </td>
              </tr>
              <tr>
			  	<td width="192" align="center" valign="middle" bgcolor="#FFFF00"><span class="style10 style14"><strong>News Upload Date</strong></span></td>
                <td width="130" align="center" valign="middle" bgcolor="#FFFF00"><span class="style10 style14"><strong>News Name  </strong></span></td>
                <td width="192" align="center" valign="middle" bgcolor="#FFFF00"><span class="style10 style14"><strong>Channel Name</strong></span></td>
              </tr>
              <%}a1=1;%>
              <tr>
			  	<td height="55" align="center" valign="middle"><div align="center" class="style13"><b><%=ndate%></b></div></td>
                <td height="55" align="center" valign="middle"><div align="center" class="style13"><b><%=nname%></b></div></td>
				<td height="55" align="center" valign="middle"><div align="center" class="style13"><b><%=chname%></b></div></td>
				
                
                
                <td width="97" height="55"><div align="center">
                    <p class="style50"><a href="U_ViewNews.jsp?nname=<%=nname%>&amp;keyword=<%=l_Input%>&amp;chname=<%=chname%>&amp;rank=<%=rank%>" class="style56 style30 style7"><b>View Details</b></a></p>
                </div></td>
              </tr>
              <%	}
						  
						}%>
            </table>
				 
					
            <p>&nbsp;</p>
			<p>
              <%
           						String str4 = "select * from news where quant_date<'"+strCurrDate+"' order by n_date desc ";
								Statement st4=connection.createStatement();
								ResultSet rs4 = st4.executeQuery(str4);
								
								while(rs4.next())
								{
								    nname = rs4.getString(3);
									chname = rs4.getString(8);
									about = rs4.getString(4);
									desc = rs4.getString(5);  
								    rank   = rs4.getInt(11);
									 ndate = rs4.getString(7);
								
									
								
									desc1 = desc.toLowerCase(); 
									 
									if (desc1.contains(l_Input))
									{
 			
 		  
												
						if(a11==0)
						{
						
						
									%>
            </p>
				  <p>&nbsp;</p>
				  <table width="506" border="1" align="center">
              <tr>
                <td colspan="4" align="center" class="style8 style13 style18">Older  News </td>
              </tr>
              <tr>
			  	<td width="192" align="center" valign="middle" bgcolor="#FFFF00"><span class="style16 style10"><strong>News Upload Date</strong></span></td>
                <td width="130" align="center" valign="middle" bgcolor="#FFFF00"><span class="style16 style10"><strong>News Name  </strong></span></td>
                <td width="192" align="center" valign="middle" bgcolor="#FFFF00"><span class="style16 style10"><strong>Channel Name</strong></span></td>
              </tr>
              <%}a11=1;%>
              <tr>
			  	<td height="55" align="center" valign="middle"><div align="center" class="style13"><b><%=ndate%></b></div></td>
                <td height="55" align="center" valign="middle"><div align="center" class="style13"><b><%=nname%></b></div></td>
				<td height="55" align="center" valign="middle"><div align="center" class="style13"><b><%=chname%></b></div></td>
                
                
                <td width="97" height="55"><div align="center">
                    <p class="style50"><a href="U_ViewNews.jsp?nname=<%=nname%>&amp;keyword=<%=l_Input%>&amp;chname=<%=chname%>&amp;rank=<%=rank%>" class="style56 style30 style7"><b>View Details</b></a></p>
                </div></td>
              </tr>
              <%	}
						  
						}%>
            </table>
				
				
				
				
             <blockquote>
						      <p class="style72">
              <%

				
			
		
		}	
	
		else
		{
			%>
            </p>
            <h3 align="center" class="style66 style72 style48">&nbsp;</h3>
            <h3 align="center" class="style66 style72 style48 style6 style12">Please Enter Correct Keyword!!</h3>
            <%
		}
	}
	

catch(Exception e)
{
	e.printStackTrace();
}
%>
            </p>
			</blockquote>
			
			
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