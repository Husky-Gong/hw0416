<%--
  Created by IntelliJ IDEA.
  User: jersey
  Date: 4/16/20
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <base href="<%=request.getContextPath()+"/"%>">
    <!-- 引入easyui中主题风格的css  -->
    <link rel="stylesheet" type="text/css" href="easyui/themes/black/easyui.css"/>
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

    <style type="text/css">
        #divElement{
            position: absolute;
            top: 40%;
            left: 40%;
            margin-top: 0;
            margin-left:0;
            width: 100px;
            height: 100px;
            background-color: blue;
        }
    </style>
</head>
<body style="background-color: #00bbee">
    <div id='divElement'>
        <div id="di" class="easyui-panel" title="LOGIN" style="width:400px;height: 300px"
             data-options="iconCls:'icon-help',closable:false,
          collapsible:false,minimizable:true,maximizable:true">


            <div style="text-align: center;margin-top: 80px">

                <form>
                    <div style="margin-bottom: 25px">
                        <span>USERNAME</span>
                        <input type="text" class="easyui-textbox" data-options="required:true"/>
                    </div>
                    <div style="margin-bottom: 25px">
                        <span>PASSWORD</span>
                        <input type="text" class="easyui-textbox" data-options="required:true"/>
                    </div>

                    <div>
                        <button class="easyui-linkbutton" data-options="iconCls:'icon-search'">SUBMIT</button>
                        <button class="easyui-linkbutton" data-options="iconCls:'icon-clear'">CLEAR</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
