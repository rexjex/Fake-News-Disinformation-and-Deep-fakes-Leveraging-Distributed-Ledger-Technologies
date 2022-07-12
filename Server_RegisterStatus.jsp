<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Server Registration Status</title>
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
          <h2 class="style2" style="color:#FF0033">Server Registration Status...!</h2>
          <div class="clr"></div>
		  <div class="post_content">         
              <%
			       			
						
					String servername=request.getParameter("chid");
					String cusername=request.getParameter("userid");
					String pass=request.getParameter("pass");
					String	mail=request.getParameter("mail");
					String	mobile=request.getParameter("cno");
					String	address=request.getParameter("address");
					String	location=request.getParameter("location");
					
					
					try {
					
						 
						 
						 
			 			String query1="select * from server  where servername='"+servername+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  </p>
                  </label>
            
		          <p class="style18 style24 style4">Channel Name Already Exist..</p>
		          <p align="left"><a href="Server_Register.jsp" class="style5 style16 style35">Back</a></p>
		          <%
				
					   }
					   else
					   {						
					 
PreparedStatement ps=connection.prepareStatement("insert into server(servername,cusername,password,mail,mobile,address,location) values(?,?,?,?,?,?,?)");
						ps.setString(1,servername);
						ps.setString(2,cusername);
						ps.setString(3,pass);
						ps.setString(4,mail);
						ps.setString(5,mobile);
						ps.setString(6,address);
						ps.setString(7,location);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  <p class="style23 style4">Registered Successfully.</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="ServerLogin.jsp" class="style16">Back</a></p>
		          <%
			
					}}
					connection.close();
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                
                <p>&nbsp;</p>
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
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ServerLogin.jsp">&raquo; Home </a></li>           
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
