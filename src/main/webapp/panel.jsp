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
	  		$("#myPanel").panel({
	  			title:"我的面包",
	  			iconCls:"icon-remove",
	  			//fit:true,
	  			width:500,
	  			height:500,
	  			/* left:1000,
	  			top:1000, */
	  			style:{"position":"relative"},
	  			collapsible:true,
	  			closable:true,
	  			
	  			//tools是数组类型，所以写[];
	  			//数组中的每一个元素是对象类型，所以写{}
	  			//对象中包含两个属性iconCls:工具的图标类；handler:点击图标要执行的操作
	  			/* tools:[
	  				{iconCls:"icon-add",handler:function(){alert("这是一个添加操作")}},{}
	  			] */
	  			
	  			//tools可以是选择器类型，写一个标签的选择器（可以通过jquery选择器加载到对应的标签）
	  			tools:"#myTools",
	  			onMove:function(left,top){
	  				console.log(left+"我的面板移到啦"+top);
	  			}
	  		});
	  	});
	  	
	  	function add(){
	  		alert("add ")
	  	}
	  	function movePanel(){
	  		//调用panel的move方法
	  		//$(selector).控件名(方法名,参数);
	  		
	  		$("#myPanel").panel("move",{left:800,top:20});
	  	}
	  
	  </script>
  </head>
  
  
  <body>
  	<a href="javascript:void(0)" onclick="movePanel()">让面板移动</a>
  	<div id="myTools">
  		<a href="javascript:void(0)" class="icon-add" onclick="add()"></a>
  		<a href="javascript:void(0)" class="icon-edit" onclick="update()"></a>
  		<a href="javascript:void(0)" class="icon-remove" onclick="deleted()"></a>
  	</div>
  	
  	<div id="myPanel">
  		这已经不再是第一个啦
  	</div>
  	<!-- <div class="easyui-panel" data-options="title:'我的面板',width:500,height:200,maximizable:true">
  		这是第一个easyUI效果
  	</div> -->
  </body>
</html>
