<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <!-- 1.需要引入jquery脚本库 -->
	  <script type="text/javascript" src="${pageContext.request. contextPath }/js/jquery.min.js"></script>
	  <!-- 2.需要引入easyUI脚本库 -->
	  <script type="text/javascript" src="${pageContext.request. contextPath }/js/jquery.easyui.min.js"></script>
	  <!-- 必须先引入jquery脚本库 -->
	  
	  <!-- 需要引入easyUI的css样式文件 -->
	  <!-- 1.easyUI的css
	  2.图标样式   icon.css -->
	  <link rel="stylesheet" type="text/css" href="${pageContext.request. contextPath }/themes/icon.css">
	  <link rel="stylesheet" type="text/css" href="${pageContext.request. contextPath }/themes/default/easyui.css">
	  
	  <script type="text/javascript">
	  	/* jquery初始化 */
	  	$(function(){
	  		
	  		$('#btn2').linkbutton({    
			    iconCls: 'icon-add',//图标类型
			    //disabled:true,
			   // plain:true
			  // toggle:true,
			   group:"a"
			}); 
	  		$('#btn3').linkbutton({    
			    //iconCls: 'icon-search',
			    //disabled:true//不被选中
			   // plain:true
			   toggle:true,
			   //group:"a",
			}); 
	  	});
	  	
	  </script>
  </head>
  
  
  <body>
  	<a id="btn" href="javascript:void(0)" onclick="">easyui</a>  
  	<a id="btn2" href="javascript:void(0)" onclick="">easyui</a>  
  	<a id="btn3" href="javascript:void(0)" onclick="">easyui</a>  
  </body>
</html>
