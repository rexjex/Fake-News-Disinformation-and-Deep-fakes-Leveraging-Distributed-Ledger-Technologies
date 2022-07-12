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
					<%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
					<%@ page import ="java.math.BigInteger" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add News Status</title>
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
          <h2 class="style2" style="color:#FF0033">Added News Status..</h2>
          <div class="clr"></div>
		  <div class="post_content">          
       <%
	
					String server = (String)application.getAttribute("server");
	
					ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String image=null,bin = "", paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					
						

		try {
    
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								
							}		
						}
			
			
				 
            String category = (String)application.getAttribute("category");
			String newsname = (String)application.getAttribute("newsname");
			String about = (String)application.getAttribute("about");
			String description   = (String)application.getAttribute("description");
			String publisher  = (String)application.getAttribute("publisher");
			String date  = (String)application.getAttribute("date");
			String year  = (String)application.getAttribute("year");
			String quantdate  = (String)application.getAttribute("quantdate");
			String cname  = (String)application.getAttribute("cname");
			String place  = (String)application.getAttribute("place");
			
            int year1=Integer.parseInt(year);
			
		    int rank=0;
				 
				    String sql3="select * from news where n_name='"+newsname+"' and nc_name='"+server+"'  ";
					Statement st3=connection.createStatement();
			  		ResultSet rs3=st3.executeQuery(sql3);
					if ( rs3.next() )
			   			{ 
						%>
						  <p align="left" class="style11">News Name Already Exist</p>
	     
  <a href="S_AddNews.jsp" class="style47">Back</a>
  
    <% }
						else
						{
				 
			String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename="filename.txt";
      			
      		    KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
				Cipher encoder = Cipher.getInstance("RSA");
				KeyPair kp = kg.generateKeyPair();
				Key pubKey = kp.getPublic();
				byte[] pub = pubKey.getEncoded();
				
			
				
      		    PrintStream p = new PrintStream(new FileOutputStream(filename)); 
			    p.print(new String(newsname));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);        
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			
			h1 = bi1.toString(16);
			
			

				String key = String.valueOf(pub);
				 
			
				 
			PreparedStatement pst=connection.prepareStatement("insert into news(category,n_name,n_about,n_desc,n_publ,n_date,nc_name,n_place,n_image,rank,hash_code,n_year,quant_date) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            
			pst.setString(1,category);
			pst.setString(2,newsname);
            pst.setString(3,about);
			pst.setString(4,description);
            pst.setString(5,publisher);
            pst.setString(6,date);
            pst.setString(7,cname);
			pst.setString(8,place);
			pst.setBinaryStream(9,(InputStream)fs, (int)(file1.length()));
			pst.setInt(10,rank);
			pst.setString(11,h1);
			pst.setInt(12,year1);
			pst.setString(13,quantdate);
			
           int x=pst.executeUpdate();
					
					
					if(x>0)
			{
					


                          %> 

    <p align="left" class="style11">News Details Upload Successfull</p>
    
  <a href="Server_Main.jsp" class="style47">Back</a>
  <h2>
    <%
			
								
								
			}
			else
			{
						%> 
  </h2>
  <p align="left" class="style11">Upload Not Successfull, Please try agian!!!</p>
      </div>
						  <p align="center"><a href="S_AddNews.jsp" class="style47">Back</a></p>
						<div align="center">
						  <%
			}
		
		}			
	} catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
	
	
	
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
