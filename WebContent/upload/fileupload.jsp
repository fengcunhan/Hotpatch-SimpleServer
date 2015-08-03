<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fileupload.jsp' starting page</title>
    
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
     <!-- enctype 默认是 application/x-www-form-urlencoded -->
     <form action="FileUpLoad" enctype="multipart/form-data" method="post" >
        
               被patch apk最低版本号：<input type="text" name="minApkVersion"> <br/>
                被patch apk最高版本号：<input type="text" name="maxApkVersion"> <br/>
               upload Patch apk：<input type="file" name="file1"><br/>
              <input type="submit" value="提交"/>
     
     </form>
     
     
     
  </body>
</html>
