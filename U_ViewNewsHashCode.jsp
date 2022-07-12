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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search news post</title>
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
.style14 {color: #000000}
.style6 { color:#CC0066}
.style15 {font-weight: bold}

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
          <h2 class="style2" style="color:#FF0033">Searched News Based on Hash code..</h2>
          <p class="style2" style="color:#0000FF"><strong><marquee behavior="alternate">(Click On Image to View More Details)</marquee></strong></p>
          <div class="clr"></div>
		  <div class="post_content">
		  <p>
				<%
				try
				{
				String user = (String)application.getAttribute("user");
				
				int id=0;
				String str1 ="",nname_HashCode="",hash_Code="",nname="",chname="",rank=""; 
				
				nname_HashCode = request.getParameter("title+hash_Code");
				
				String[] split = nname_HashCode.split(" ");
				
				for(int i=split.length-1;i>0;i--)
				{
				 hash_Code = split[i];
				}
				String str = "Select * from news where hash_code='"+hash_Code+"' ";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(str);
				while(rs.next())
				{
				id=rs.getInt(1);
				nname = rs.getString(3);
				chname = rs.getString(8);
				rank = rs.getString(12);
				
				
				
				
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
				
				String str2 = "insert into searchtransaction (user,nc_name,n_name,keyword,hash_code,date) values('"+user+"','"+chname+"','"+nname+"','"+"No"+"','"+hash_Code+"','"+dt+"')";
		connection.createStatement().executeUpdate(str2);
								
							         %>
									 
		    <tr>
			   <td><span class="style14 style4"><b>News Name  : </b></span><span class="style7"> <b><%=nname%></b> <span class="style2"><br/></span></td>
			    <td><span class="style14 style4"><b>Hash_Code :</b></span>  <span class="style6"><b><%=hash_Code%></b></span><span class="style15"> <span class="style2"><br/>
	  </span></span></td>
				 
			   <td><a class="#" id="img1" href="news_Image_Details.jsp?chname=<%=chname%>&nname=<%=nname%>&rank=<%=rank%>">
			            <input  name="image" type="image" src="user_Pic.jsp?picture=<%="newsimage"%>&id=<%=id%>" style="width:145px; height:150px;"  /></a>
			  </td>
				 
				
				 
		    </tr>
				<p></p>					 
									 
               
			<%	}
				
			    }catch(Exception e)
				{
				out.print(e);
				}
				%>
				</p>
				
				<p>&nbsp;</p>
                <p align="left" class="style3"><a href="U_SearchNewsHashCode.jsp">Back</a></p>
				
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