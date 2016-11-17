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
	<link rel="stylesheet" type="text/css" href="<%=path %>/jslib/easyUI/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/jslib/easyUI/themes/icon.css">
	<script type="text/javascript" src="<%=path %>/jslib/easyUI/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/jslib/easyUI/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=path %>/jslib/easyUI/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript">
		function addTabs(title,url){
			var flag = $("#tt").tabs("exists",title);
			
			if(flag==false){
				$('#tt').tabs('add',{
					title: title,
					href:'${pageContext.request.contextPath}/'+url,
					closable: true
				});
			}else{
				$('#tt').tabs('select',title);
			}
		}
	</script>
  </head>
  
  <body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:70px;background:#B3DFDA;padding:10px">
	  <h2>小项目</h2> 
	</div>
	<div data-options="region:'west',split:true,title:'菜单导航'" style="width:150px;padding:10px;">
	  <input type="button" value="商品类型管理" onclick="addTabs('商品类型管理','wzw/toGoodsGoodsType.action')"/>
	  <input type="button" value="商品品牌管理" onclick="addTabs('商品品牌管理','lxd/toGoodsBrandList.action')"/>
	  <input type="button" value="商品信息管理" onclick="addTabs('商品信息管理','zhh/toGoodsList.action')"/>
	  <input type="button" value="商品店铺管理" onclick="addTabs('商品店铺管理','dxr/toShopList.action')"/>
	</div>
	<div data-options="region:'center',title:''">
	  <div id="tt" class="easyui-tabs" style="width:700px;height:250px" data-options="fit:true">
		<div title="首页" style="padding:10px">
			<center>
				<div style="margin-top: 200px;"></div>
				<span style="font-size: 40px;font-family: '楷体';">欢迎使用</span>
			</center>
		</div>
	 </div>
	</div>
	</div>
</body>
</html>

