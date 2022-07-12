<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile Page</title>
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
.style3 {font-size: 18px}
.style4 {color: #000000}
.style6 {color: #000000; font-size: 16px; }
.style7 {
	font-size: 16px;
	color: #FF0000;
}
.style8 {font-size: 16px}
.style9 { color:#660066}
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
          <h2 class="style3" style="color:#FF0033">User <span class="style9"><%=(String)application.getAttribute("user")%></span>'s Details</h2>
          <div class="clr"></div>
		  <div class="post_content">
		  <p>&nbsp;</p>
          <table width="519" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
           
            <%
						
						String user=(String )application.getAttribute("user");
												
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(7);
								s5=rs.getString(8);
								s6=rs.getString(9);
								
								
								
					%>
            <tr>
              <td width="226" rowspan="7" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" >
                <p><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="userimage"%>&id=<%=i%>" style="width:180px; height:140px;" />
                </a></p>
                </div></td>
            </tr>
            <tr>
              <td  width="122" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
              <td  width="163" valign="middle" height="51" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="122" valign="middle" height="68" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Mobile</strong></div></td>
              <td  width="163" valign="middle" height="68" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="122" align="left" valign="middle" height="69" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Address</strong></div></td>
              <td  width="163" align="left" valign="middle" height="69" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="122" align="left" valign="middle" height="81" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Date of Birth</strong></div></td>
              <td  width="163" align="left" valign="middle" height="81" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
            </tr>
			<tr>
              <td  width="122" align="left" valign="middle" height="81" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Gender</strong></div></td>
              <td  width="163" align="left" valign="middle" height="81" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
            </tr>
			<tr>
              <td  width="122" align="left" valign="middle" height="81" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Status</strong></div></td>
              <td  width="163" align="left" valign="middle" height="81" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s6);%>
              </strong></div></td>
            </tr>
            
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right">&nbsp;</p>
          <p align="center"><a href="User_Main.jsp" class="style11">Back</a></p>
		  
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