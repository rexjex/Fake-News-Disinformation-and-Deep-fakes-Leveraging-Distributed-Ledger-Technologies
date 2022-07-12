<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add News</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>
<script language="javascript" type="text/javascript">
function valid()
{
var na11=document.s.category.value;
if(na11=="--Select--")

{
alert("Select Category");
document.s.category.focus();
return false;
}
var na1=document.s.newsname.value;
if(na1=="")

{
alert("Please Enter News Name");
document.s.newsname.focus();
return false;
}
var na2=document.s.about.value;
if(na2=="")

{
alert("Please Enter About");
document.s.about.focus();
return false;
}
var na3=document.s.t42.value;
if(na3=="")

{
alert("Select Description File");
document.s.t42.focus();
return false;
}
var na4=document.s.publisher.value;
if(na4=="")

{
alert("Please Enter Publisher");
document.s.publisher.focus();
return false;
}
var na5=document.s.date.value;
if(na5=="")

{
alert("Please Enter Date");
document.s.date.focus();
return false;
}
var na6=document.s.file.value;
if(na6=="")

{
alert("Please Choose Video File");
document.s.file.focus();
return false;
}

}
</script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {color: #FF0033}
.style5 {color: #000000}
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
          <h2 class="style2" style="color:#FF0033">Add News Details..</h2>
          <div class="clr"></div>
		  <div class="post_content">
		  	<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>



           <form name="s" action="S_AddNews1.jsp" method="post"  onSubmit="return valid()"  ons target="_top">	
	  <%
	
      	
			String chName=(String)application.getAttribute("server");

      	try 
	{
      	
			
			
		
				
			
						
			
			Date now1 = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			String strCurrDate = sdf.format(now1);
			Date date1 = new SimpleDateFormat("dd/MM/yyyy").parse(strCurrDate);
			
			int year= Calendar.getInstance().get(Calendar.YEAR);
			
			
			
				
			
			
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select category FROM categories"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("category"));
		
	   }
	   
		
		
				
		
		
		
%>
             <table width="850" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				
					<tr>
 						<td   width="150" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Select Category </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><select id="s1" name="category">
                            <option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select></div></td>
					</tr>
					<tr>
 						<td   width="120" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">News Name </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input id="use" name="newsname" class="text" style="width:175px;" /></div></td>
					</tr>
					<tr>
 						<td   width="120" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">News About</div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><textarea name="about" rows="3" cols="25"></textarea></div></td>
					</tr>
					<tr>
                  <td   width="180" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Select Description File </div></td>
                  <td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></div></td>
				  </tr>
                <tr>
                  <td   width="150" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Description content </div></td>
                  <td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;"><textarea name="text" id="textarea" cols="25" rows="4"></textarea></div></td>
                </tr>
					<tr>
 						<td   width="120" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Publisher </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input id="pbl" name="publisher" class="text" style="width:175px;" /></div></td>
					</tr>
					
					<tr>
 						<td   width="120" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">News Date </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input id="date" name="date" value="<%=strCurrDate%>" class="date" style="width:175px;" readonly/></div></td>
					</tr>
					<tr>
 						<td   width="120" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">News Year </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input id="year" name="year" value="<%=year%>" class="date" style="width:175px;" readonly/></div></td>
					</tr>
					<tr>
 						<td   width="270" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Set News Quantization Date </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input id="qdate" name="quantdate" class="text" style="width:175px;" /></div></td>
					</tr>
					<tr>
 						<td   width="170" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">News Channel Name </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input id="cname" name="cname" value="<%=chName%>" class="text" style="width:175px;" readonly /></div></td>
					</tr>
					<tr>
 						<td   width="120" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">News Place </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input id="place" name="place" class="text" style="width:175px;" /></div></td>
					</tr>
					
					
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><input type="submit" value="Upload" style="width:100px; height:35px; background-color:#999999; color:#003399;"/>
					<input type="reset" name="Reset" style="width:100px; height:35px; background-color:#999999; color:#003399;"/></td></tr></div>

					
					
	         </table>
			 <%


           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </form>
		  
		   <p>&nbsp;</p>
           <p>&nbsp;</p>
		        <div align="center">
		          <p><a href="Server_Main.jsp" class="style14">Back</a></p>
	            </div>
				
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