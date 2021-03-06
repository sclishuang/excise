<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎</title>
</head>
<body>
	
	<div style="width:1024px">
	<table border="1" bgcolor="lightblue">
		<tr>
			<td><button>添加产品内容</button></td>
			<td><select>选择产品类别</select></td>
			<td><input type="text"></td>
			<td><button>搜索</button></td>
		</tr>
		
		<tr>
			<td colspan="4"><button>中文产品</button></td>
		</tr>
		
		
		<tr>
			<td>选择语言</td>
			<td colspan="3"><input type="radio" checked="checked">中文</td>
		</tr>
		<tr>
			<td>产品分类</td>
			<td><select></select></td>
			<td>发布日期</td>
			<td><input></td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
		</tr>
		<tr>
			<td>1</td>
			<td><textarea rows="15" cols="40"></textarea></td>
			<td>3</td>
			<td><img src="${pageContext.request.contextPath}/statics/2.png"></td>
		</tr>
		<tr>
			<td colspan="4">产品内容</td>
		</tr>
		
		
		<tr>
			
			<td colspan="4"><div id="div1">
			
			</div></td>
		</tr>
	</table>
		</div>	
	
	
	
    
	<script src="${pageContext.request.contextPath}/statics/js/wangEditor.min.js"></script>
	<script>
    var E = window.wangEditor;
    var editor = new E('#div1');
 	// 上传图片到服务器(处理上传的后台代码)
    editor.customConfig.uploadImgServer = '/upload';
 	// 隐藏“网络图片”菜单(true是显示--默认，false隐藏)
    editor.customConfig.showLinkImg = false;
 	// 将每张图片大小限制为 3M(单位为字节)
    editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024;
 	// 限制一次最多能传几张图片，默认为 10000 张（即不限制），需要限制可自己配置
	// 限制一次最多上传 5 张图片
	editor.customConfig.uploadImgMaxLength = 5;
 	// 监听函数，可使用监听函数在上传图片的不同阶段做相应处理
 	editor.customConfig.uploadImgHooks = {
		// 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
    	// （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
    	// 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
    	customInsert: function (insertImg, result, editor) {
        	// insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果
        	// 举例：假如上传图片成功后，服务器端返回的是 [url,url,...] 这种格式，即可这样插入图片：
        	for(var i in result){// result 必须是一个 JSON 格式字符串！！！否则报错
        		insertImg('${pageContext.request.contextPath}/statics/file/'+result[i]);
        	}
    	}
    }
 	
 	editor.customConfig.pasteFilterStyle = true;
 	
 	editor.customConfig.pasteIgnoreImg = true;
 	
 	editor.customConfig.colors = [
        'rgba(255,0,0,0.3)',
        'blue',
        'rgb(0,255,0)',
        '#c24f4a',
        '#8baa4a',
        '#7b5ba1',
        '#46acc8',
        '#ffffff'
    ];
 	
 	editor.customConfig.menus = [
        'fontName',
        'fontSize',
        'italic',
        'underline',
        'strikeThrough',
        'foreColor',
        'backColor',
        'image'
    ]
 	
    editor.create();
</script>
</body>
</html>