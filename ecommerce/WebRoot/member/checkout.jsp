<%@page import="product.ProductDTO"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'checkout.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
    <%ArrayList arr = (ArrayList)session.getAttribute("cart");
      Iterator ir = arr.iterator();
      
     %>
     <table border="1" align="center">
     <%
     double total = 0;
     while(ir.hasNext()) 
     {
     	ProductDTO pdto =(ProductDTO)ir.next();
     	
     total = total+pdto.getPrice();
     %>
     
     <tr><td><%=pdto.getTitle()%></td><td><img src = "image/product/<%=pdto.getPicture1() %>" width = "100" height = "100"></td><td><%=pdto.getPrice() %></td></tr>
     <%} %>
     Total amount is: <%=total %>
     </table>
  </body>
</html>
