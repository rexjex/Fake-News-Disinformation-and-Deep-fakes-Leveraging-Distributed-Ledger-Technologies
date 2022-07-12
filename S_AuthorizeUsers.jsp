<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Authorize Users</title>
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
.style4 {color: #000000}
.style9 {color: #990033}
.style11 {color: #2c83b0;font-weight: bold;}
.style7 { color:#FF6600}

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
          <h2 class="style2" style="color:#FF0033">Authorize Users..</h2>
          <div class="clr"></div>
		  <div class="post_content">
          <p>&nbsp;</p>
          <table width="650" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="47"  valign="middle" height="34" ><div align="center" class="style11"><strong>ID</strong></div></td>
              <td  width="159" valign="middle" height="34" ><div align="center" class="style11"><strong>User Image</strong></div></td>
              <td  width="145" valign="middle" height="34"><div align="center" class="style11"><strong>User Name</strong></div></td>
              <td  width="154" valign="middle" ><div align="center" class="style11"><strong>Mobile</strong></div></td>
              <td  width="154" valign="middle" height="34" ><div align="center" class="style11"><strong>Email</strong></div></td>
              <td  width="133" valign="middle" height="34"><div align="center" class="style11"><strong>Address</strong></div></td>
              <td  width="112"  valign="middle" height="34" ><div align="center" class="style11"><strong>Login Status </strong></div></td>
			   
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(4);
								s4=rs.getString(7);								
								s5=rs.getString(9);
								
								
					%>
            <tr>
              <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(i);%>
              </div></td>
              <td width="159" rowspan="1" align="center" valign="middle" ><div style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="userimage"%>&id=<%=i%>" style="width:120px; height:120px;" />
              </a></div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <strong><%out.println(s1);%></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s2);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s3);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s4);%>
              </div></td>
              <%
						if(s5.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style9"><a href="S_UserStatus.jsp?val=<%="login"%>&name=<%=s1%>" class="style9"><strong>waiting</strong></a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="50" height="0" align="center"  valign="middle"><div align="center" class="style4">
                  <strong><%out.println(s5);%></strong>
              </div></td>
			 		    <%
						}
						
						%>
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
          <p align="right"><a href="Server_Main.jsp" class="style11"></a></p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="center"><a href="Server_Main.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
		 
				   
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