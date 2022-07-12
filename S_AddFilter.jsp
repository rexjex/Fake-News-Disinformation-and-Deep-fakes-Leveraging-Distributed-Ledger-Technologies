<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Filter</title>
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
.style10 {color: #FFFF00}
.style11 {color: #FFFFFF}
.style12 {color: #FF0000}
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
          <h2 class="style2" style="color:#FF0033">Add Fake Filter..</h2>
          <div class="clr"></div>
		  <div class="post_content">
		  <form id="form1" name="form1" method="post" action="S_AddFilter1.jsp">
            <p>&nbsp;</p>
            <table width="385" border="2">
              <tr>
                <td width="181" height="47" bgcolor="#FF0000"><span class="style11 style10">Select Filter Category </span></td>
                <td width="186"><select name="tclass">
                  <option>----Select Filter---</option>
                  <option>Fake</option>
                  
                </select>                </td>
              </tr>
              <tr>
                <td height="52" bgcolor="#FF0000"><span class="style11 style10">Enter Filter Name </span></td>
                <td><input type="text" name="fname" /></td>
              </tr>
              <tr>
                <td height="52">&nbsp;</td>
                <td><p>
                  <input type="submit" name="Submit" value="Add" />
                  <input type="reset" name="Submit2" value="Reset" />
                </p></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p><a href="AdminMain.jsp"></a></p>
            <p class="style12 style1">Filter Details </p>
        </form>
		  
		   <%@ include file="connect.jsp" %>
       <table width="329" border="1">
				  
				 <tr>
                      
				   <td width="195" height="42" bgcolor="#FF0000"><div align="center" class="style10"><span class="style3 style14"><b>Fake Category </b></span></div></td>
   				   <td width="439" bgcolor="#FF0000"><div align="center" class="style14 style10"><b>Filter Name</b></div></td>
		 </tr>
		   
            <%
					 
				
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0,rank=0,k=0;
					
						try 
						{
							
						   	String query="select * from filter "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s0=rs.getString(1);
								s1=rs.getString(2);
								
								
								
								
					%>
           <tr>
              <td height="33"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4 style12 style14 style8" >
                    <div align="center">
                    <%out.println(s0);%>
                </div>
             </div></td>
			  
			  <td height="33"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4 style12 style14 style9" >
                    <div align="center">
                    <%out.println(s1);%> 
                </div>
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
		  
				  <p><a href="Server_Main.jsp">Back</a></p>
				  
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