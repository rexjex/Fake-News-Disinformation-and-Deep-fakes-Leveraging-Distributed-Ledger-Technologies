<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 


<%
	
  	try{  
	     String pic=request.getParameter("picture");
		 String n_Name=request.getParameter("n_Name");
		 int id = Integer.parseInt(request.getParameter("id"));

		if(pic.equals("userimage"))
		 {
				Statement st=connection.createStatement();
				String strQuery = "select image from user where id="+id+"" ;
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
		
		}
		else if(pic.equals("newsimage"))
		 {
				Statement st=connection.createStatement();
				String strQuery = "select n_image from news where id="+id+"" ;
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
		
		}
		else{}
		
			
		
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>

</body>
</html>