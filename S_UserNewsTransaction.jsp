<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Transaction Page</title>
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
.style3 {color: #CC0066;
		font-size: 14px;}
.style4 {color:#FF6600;
		font-size: 14px;}
.style11 {color: #000000}
.style12 {
	font-size: 18px;
	font-weight: bold;
	color: #2c83b0;
}
.style13 {font-size: 16px}
.style14 {color:#006666;
   		font-size: 14px;
		font-weight:bold}
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
          <h2 class="style2" style="color:#FF0033">User's  News Post Search Transactions ..</h2>
          <div class="clr"></div>
		  <div class="post_content">
				<p class="style5">&nbsp;</p>
               <p>
	        <table width="623" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td  width="41" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style5 style2 style6 style12 style13">S.N</div></td>
				<td  width="118" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style5 style6 style12 style13">User</div></td>
                <td  width="112" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style5 style2 style6 style12 style13">News Name</div></td>
                <td  width="130" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style5 style6 style12 style13">News Channel</div></td>
                <td  width="116" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style5 style6 style12 style13">Keyword</div></td>                
			    <td  width="99" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style5 style6 style12 style13">Date</div></td>
              </tr>
              <%@ include file="connect.jsp" %>
              <%
					  	String server=(String)application.getAttribute("server");
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						    
						   	String query="select * from searchtransaction where keyword!='"+"No"+"' and nc_name='"+server+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(3);
								s3=rs.getString(5);
								s4=rs.getString(2);
								s5=rs.getString(7);
							
								
								
								
								
							
						
					%>
              <tr>
                <td  valign="baseline" height="0"><p class="style22 style5 style4 style6">&nbsp;</p>
                    <div align="center" class="style22 style5 style4 style6">
                      <span class="style11">
					  <%out.println(i);%>
                      <p>&nbsp; </p>
                    </div></td>
                <td  valign="baseline" height="0"><p class="style22 style5 style4 style6">&nbsp;</p>
                        <div align="center" class="style22 style5 style4 style6">
                          <span class="style14">
						  <%out.println(s4);%>
                          <p>&nbsp; </p>
                    </div></td>
				<td  valign="baseline" height="0"><p class="style22 style5 style4 style6">&nbsp;</p>
                        <div align="center" class="style22 style5 style4 style6">
                          <span class="style4">
                          <%out.println(s1);%>
                          </span>
                          <p>&nbsp; </p>
                    </div></td>
                <td  valign="baseline" height="0"><p class="style22 style5 style4 style6">&nbsp;</p>
                    <div align="center" class="style22 style5 style4 style6">
                      <span class="style3">
					  <%out.println(s2);%>
                      <p>&nbsp; </p>
                    </div></td>
                 
                  
                <td  valign="baseline" height="0"><p class="style22 style5 style4 style6">&nbsp;</p>
                   <div align="center" class="style22 style5 style4 style6">
                     <span class="style11">
                     <%out.println(s3);%>
                     </span>
                     <p>&nbsp; </p>
                </div></td>
                    
					  
					  <td width="99" height="0"  valign="baseline"><p class="style22 style5 style4 style6">&nbsp;</p>
                        <div align="center" class="style22 style5 style4 style6">
                          <span class="style11">
						  <%out.println(s5);%>
                          <p>&nbsp; </p>
                    </div></td>
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
			   </p>
                <p align="left" class="style7"><a href="Server_Main.jsp">Back</a></p>
				
				
				
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