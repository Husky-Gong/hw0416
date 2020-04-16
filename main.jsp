<%--
  Created by IntelliJ IDEA.
  User: jersey
  Date: 4/16/20
  Time: 10:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOME PAGE</title>
    <base href="<%=request.getContextPath()+"/"%>">

    <%--引入easyui中主题风格的css  注意：rel   type --%>
    <link  rel="stylesheet" type="text/css" href="easyui/themes/black/easyui.css"/>
    <%--引入easyui图标的css--%>
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
    <%--引入easyui中demo.css--%>
    <link  rel="stylesheet" type="text/css" href="easyui/themes/demo.css">
    <%--引入jQ的依赖文件  type：引入文件类型--%>
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <%--引入easyui中依赖的js文件--%>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
    <%--引入easyui中中文js依赖--%>
    <script type="text/javascript" src="easyui/easyui-lang-zh_CN.js"></script>

    <script type="text/javascript">
        $(function () {


            $('#tt').tree({
                onClick: function(node){
                    //node:当前点击的节点对象
                    // alert(node.text);//当前节点文本内容

                    //判断当前点击的选项卡是否已经打开
                    var flag = $('#tab').tabs('exists',node.text);

                    if(flag){
                        //直接打开指定选项卡
                        var flag = $('#tab').tabs('select',node.text);
                    }else{
                        //新建一个选项卡
                        $('#tab').tabs('add',{
                            title:node.text,
                            content:'<iframe src="showUser.jsp" width="99%" height="98%"></iframe>',
                            closable:true
                        });
                    }
                }});
        })

    </script>
</head>


<body class="easyui-layout" >



<div data-options="region:'north',split:false" style="height:100px;background-color: black;
                 background-image: url('imgs/work_t.jpg')">
    <img src="imgs/logo.png" width="200px" style="float: left">
    <img src="imgs/logo.png" width="200px" style="float: left;margin-top:60px;margin-left: -200px">
    <img src="imgs/logo.png" width="200px" style="float: right">
    <img src="imgs/logo.png" width="200px" style="float:right;margin-top: 60px;margin-right: -200px">

</div>
<div data-options="region:'south'" style="height:100px;background-image: url('imgs/sxt.png');background-repeat: no-repeat;
                                             background-position: center;background-color: #222222">
</div>
<div data-options="region:'east',title:'East',split:true" style="width:100px;"></div>
<div data-options="region:'west',title:'Menu',split:true" style="width:200px;">
    <div class="easyui-accordion" data-options="fit:true">
        <div title="MenuA">

            <ul id="tt" class="easyui-tree">
                <li>
                    <span>BBA</span>
                    <ul>
                        <li>百度</li>
                        <li>阿里</li>
                        <li>bjsxt</li>
                    </ul>
                </li>
                <li>
                    <span>CCTV</span>
                    <ul>
                        <li>百度</li>
                        <li>阿里</li>
                        <li>bjsxt</li>
                    </ul>
                </li>
                <li>BBA</li>
            </ul>

        </div>
        <div title="MenuB"></div>
        <div title="MenuC"></div>
    </div>
</div>
<div data-options="region:'center'">

    <div class="easyui-tabs" id="tab" data-options="fit:true">

    </div>

</div>
</body>
</html>
