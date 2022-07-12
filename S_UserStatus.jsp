	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   
		   String name=request.getParameter("name");
		   String val=request.getParameter("val");
			 if(val.equals("login"))
			{
				String str = "Authorized";
				Statement st1 = connection.createStatement();
				String query1 ="update user set status='"+str+"' where username='"+name+"'";
				st1.executeUpdate (query1);
				connection.close();
				response.sendRedirect("S_AuthorizeUsers.jsp");  
			
			}
			
			else{}
	   		
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
