<%@ include file="connect.jsp" %>
<%


   		try {
	   	  
								
	  
	  
	String id=request.getParameter("id");
	
	Statement st=connection.createStatement();
	String query1="update hs_access_req set  status='Permitted' where id='"+id+"'";
	st.executeUpdate(query1);
	
	connection.close();
	response.sendRedirect("HS_ViewAccessControl_req.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>
