<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%@ page import="org.bouncycastle.util.encoders.Base64"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>News Post Details</title>
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
.style12 {color: #2c83b0}
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
          <h2 class="style2" style="color:#FF0033">Details of News Post <span class="style2" style="color:#006666"><%=request.getParameter("nname")%> ..</h2>
          <div class="clr"></div>
		  <div class="post_content">
		  <p>&nbsp;</p>
  
  <table width="600" border="1" align="center">
  <tr>
   <td width="140" height="32"><div align="center"><span class="style3 style12"><b>Id</b> </span></div></td>
    <td width="178"><div align="center" class="style12"><b>Channel Name</b></div></td>
	<td width="178"><div align="center" class="style12"><b>News Name</b></div></td>
   <td width="140" height="32"><div align="center"><span class="style3 style12"><b>Video File </b> </span></div></td>
      <td width="293"><div align="center"><span class="style3 style12"><b>Description</b> </span></div></td>
    <td width="178"><div align="center" class="style12"><b>News Image</b></div></td>
	  <td width="205"><div align="center"><span class="style3 style12"><b>Date</b></span></div></td>
	  <td width="205"><div align="center"><span class="style3 style12"><b>News Place</b></span></div></td>
	  	  <td width="205"><div align="center"><span class="style3 style12"><b>Review</b></span></div></td>
  </tr>

            

<%

	String user=(String )application.getAttribute("user");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        			String nname=request.getParameter("nname");
					String chname=request.getParameter("chname");
					
					int rank=Integer.parseInt(request.getParameter("rank"));
					
					int rankup=rank+1;
					
										
					String rankUp="update news set rank="+rankup+" where n_name='"+nname+"' and nc_name='"+chname+"' ";
					connection.createStatement().executeUpdate(rankUp);
			
				
               		
      		
      	   String query="select * from news where nc_name='"+chname+"' and n_name='"+nname+"' "; 
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
		
		
					
		
		%>



  <tr>
      <td><div align="center" style="color:#000000"><%=i%></div></td>
    <td><div align="center" style="color:#CC0066"><%=s1%></div></td>
	<td><div align="center" style="color:#FF6600"><%=s2%></div></td>
    <td><video controls preload="auto" src="./<%=s3%>" width="160" height="150"></video><div align="center"><%=s2%></div></td>
    <td><div align="center" style="color:#000000"><%=s4%></div></td>
     <td><div align="center">
      <input  name="image" type="image" src="user_Pic.jsp?picture=<%="newsimage"%>&id=<%=i%>" width="100" height="100" alt="Submit">
      </input></div>
	 </td>
		  	   <td><div align="center" style="color:#000000"><%=s5%></div></td>
			   <td><div align="center" style="color:#000000"><%=s6%></div></td>
		  	   <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style9" ><strong> <a href="U_Review.jsp?id=<%=i%>&amp;nname=<%=s2%>&amp;chname=<%=s1%>&amp;user=<%=user%>">Review</a> </strong></div></td>
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

 <p>&nbsp;</p>
  
		          <p><a href="U_SearchNewsHashCode.jsp" class="style14">Back</a></p>


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