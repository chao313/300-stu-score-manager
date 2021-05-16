<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>XXX工作室</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/ui-lightness/jquery-ui-1.10.4.custom.css"
          rel="stylesheet">
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/jquery-ui-1.10.4.custom.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#accordion").accordion();
        });
    </script>
    <style type="text/css">
        body {
            font: 72.5% "Trebuchet MS", sans-serif;
            margin: 50px;
            background-color: #7ecef4;
        }

        .datalist {
            border: 1px solid #0058a3; /* 表格边框 */
            font-family: Arial;
            border-collapse: collapse; /* 边框重叠 */
            background-color: #eaf5ff; /* 表格背景色 */
            font-size: 14px;
        }

        .datalist caption {
            padding-bottom: 5px;
            font: bold 1.4em;
            text-align: left;
        }

        .datalist th {
            border: 1px solid #0058a3; /* 行名称边框 */
            background-color: #4bacff; /* 行名称背景色 */
            color: #FFFFFF; /* 行名称颜色 */
            font-weight: bold;
            padding-top: 4px;
            padding-bottom: 4px;
            padding-left: 12px;
            padding-right: 12px;
            text-align: center;
        }

        .datalist td {
            border: 1px solid #0058a3; /* 单元格边框 */
            text-align: center;
            padding-top: 4px;
            padding-bottom: 4px;
            padding-left: 10px;
            padding-right: 10px;
        }

        .datalist tr.altrow {
            background-color: #c7e5ff; /* 隔行变色 */
        }
    </style>
</head>

<body>
<jsp:include page="scoreServiceNavigation.jsp"></jsp:include>
<div id="accordion">
    <h3>成绩管理——成绩查询结果显示如下</h3>
    <div align="center">
        <table class="datalist table">
            <img alt=""
                 src='scoreAnalyzeSixAction.action?gradeID=<s:property value="gradeID" />&courseID=<s:property value="courseID" />'
                 width="1000" height="500">
            <hr>

            <td rowspan="7"><img alt=""
                                 src='scoreRankPie.action?failCount=<s:property value="failCount" />&sucCount=<s:property value="sucCount" />&goodCount=<s:property value="goodCount" />&secondaryCount=<s:property value="secondaryCount" />&excellentCount=<s:property value="excellentCount" />&year=<s:property value="grade.year" />&classID=<s:property value="grade.classID" />&courseID=<s:property value="course.bianHao" />&xueqi=<s:property value="xueqi" />&examType=<s:property value="examType" />'
                                 width="500" height="375"/>
            </td>
            </tr>
            <tr>
                <th>考试类型 —— <s:property value="examType"/></th>
                <th>学期 —— <s:property value="xueqi"/></th>
                <th>课程 —— <s:property value="course.name"/></th>
            </tr>
            <tr>
                <th>总分 —— <s:property value="totalScore"/></th>
                <th>参加考试 —— <s:property value="stuCount"/>人</th>
                <th>平均分 —— <s:property value="avgScore"/></th>
            </tr>
            <tr>
                <th>最高分 —— <s:property value="maxScore"/></th>
                <th>最低分 —— <s:property value="minScore"/></th>
                <th>&nbsp;</th>
            </tr>
            <tr>
                <th>不及格 —— <s:property value="failCount"/>人</th>
                <th>及格 —— <s:property value="sucCount"/>人</th>
                <th>良好 —— <s:property value="goodCount"/>人</th>
            </tr>
            <tr>
                <th>中等 —— <s:property value="secondaryCount"/>人</th>
                <th>优秀 —— <s:property value="excellentCount"/>人</th>
                <th>&nbsp;</th>
            </tr>
            <tr>
                <td colspan="3" align="center">考试时间 —— <s:property value="examTime"/></td>
            </tr>
        </table>
        <%-- <table>
            <tr>
                <td>学号</td><td>姓名</td><td>考试时间</td><td>考试类型</td><td>学期</td><td>最后成绩</td><td>操作</td>
            </tr>
            <s:iterator value="scoreByGidCids">
                <tr>
                    <td> <s:property value="stuXueHao" /> </td>
                    <td> <s:property value="stuName" /> </td>
                    <td> <s:property value="examTime" /> </td>
                    <td> <s:property value="examType" /> </td>
                    <td> 第<s:property value="xueqi" />学期 </td>
                    <td> <s:property value="score" /> </td>
                    <td>&nbsp;&nbsp;<a href="#">编辑</a>&nbsp;&nbsp;&nbsp;<a href="#">删除</a>&nbsp;&nbsp;</td>
                </tr>
            </s:iterator>
        </table> --%>
        <table class="datalist table">
            <tr>
                <th><strong>排名</strong></th>
                <th><strong>学号</strong></th>
                <th><strong>姓名</strong></th>
                <th><strong>成绩</strong></th>
            </tr>
            <s:iterator value="scoreByGidCids" status="status">
                <tr>
                    <td><s:property value="%{#status.count}"/></td>
                    <td><s:property value="stuXueHao"/></td>
                    <td><s:property value="stuName"/></td>
                    <td><s:property value="score"/></td>
                </tr>
            </s:iterator>
        </table>
    </div>
</div>
</body>
</html>
