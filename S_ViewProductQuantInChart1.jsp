				
<%@ include file="connect.jsp"%>


<%
String server=(String)application.getAttribute("server");
try
{

	   

ResultSet rs11=connection.createStatement().executeQuery("select distinct(category) from news where nc_name='"+server+"'");

%><html>
<head>
<title>News Post Rank In Chart..</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null,s2=null;
		
		while(rs11.next())
	{
	
	String cat=rs11.getString(1);
	
	ResultSet rs=connection.createStatement().executeQuery("select * from news where nc_name='"+server+"' and category='"+cat+"'");
	
	if(rs.next())
	{
	
	 
	 s1=rs.getString(3);
	 s2=rs.getString(2);
	 int s3=rs.getInt(14);
	
	ResultSet rs1=connection.createStatement().executeQuery("select count(category) from news where nc_name='"+server+"' and category='"+s2+"'");	
	if(rs1.next())
	{
	int count=rs1.getInt(1);
	
	
	%>
	
	myData["<%=i%>"]=["<%= s2%>"+" "+"<%=s3%>",<%=count%>];
        
	<%
	i++;}}}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#EFCF25');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

