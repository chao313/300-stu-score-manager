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
        function btn1() {
            var $btn1 = $("input[name=btn1]");
            $btn1.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryStuTest.action",
                        data: {
                            stuXueHao: $("#sxh1").val(),

                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    var d = eval("(" + data + ")");
                    if (d.flag == 0) {
                        alert("没有找到该学号对应的学生成绩记录，请核对后重新输入");
                        return;
                    }
                    else {
                        $("#myForm1").submit();
                    }
                };
            });
        }

        function btn2() {
            var $btn2 = $("input[name=btn2]");
            $btn2.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryStuCidTest.action",
                        data: {
                            stuXueHao: $("#sxh2").val(),
                            courseID: $("#courseID2").val()

                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    var d = eval("(" + data + ")");
                    if (d.flag == 0) {
                        alert("没有找到该学号和课程对应的学生成绩记录，请核对后重新输入");
                        return;
                    }
                    else {
                        $("#myForm2").submit();
                    }
                };
            });
        }

        function btn3() {
            var $btn3 = $("input[name=btn3]");
            $btn3.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryStuTypeXqTest.action",
                        data: {
                            stuXueHao: $("#sxh3").val(),
                            examType: $("#examType3").val(),
                            xueqi: $("#xueqi3").val()
                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    var d = eval("(" + data + ")");
                    if (d.flag == 0) {
                        alert("没有找到相关的成绩记录，请核对后重新输入");
                        return;
                    }
                    else {
                        $("#myForm3").submit();
                    }
                };
            });
        }

        function btn4() {
            var $btn4 = $("input[name=btn4]");
            $btn4.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryGradeCidTest.action",
                        data: {
                            gradeID: $("#gradeID4").val(),
                            courseID: $("#courseID4").val()
                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    var d = eval("(" + data + ")");
                    if (d.flag == 0) {
                        alert("没有找到该班级和课程的相关成绩记录，请核对后重新选择");
                        return;
                    }
                    else {
                        $("#myForm4").submit();
                    }
                };
            });
        }

        function btn6() {
            var $btn6 = $("input[name=btn6]");
            $btn6.bind("click", function () {
                $("#myForm6").submit();
            });
        }

        function btn5() {
            var $btn5 = $("input[name=btn5]");
            $btn5.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryLastTest.action",
                        data: {
                            gradeID: $("#gradeID5").val(),
                            courseID: $("#courseID5").val(),
                            xueqi: $("#xueqi5").val(),
                            examType: $("#examType5").val()
                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    var d = eval("(" + data + ")");
                    if (d.flag == 0) {
                        alert("不存在相关成绩记录，请重新核对后再选择");
                        return;
                    }
                    else {
                        $("#myForm5").submit();
                    }
                };
            });
        }


        function btn10_avg() {
            var $btn4 = $("input[name=btn10_avg]");
            $btn4.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryGradeCidTest.action",
                        data: {
                            gradeID: $("#year10").val(),
                            courseID: $("#courseID10").val()
                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    window.location.href = "EchartsYearCourseAvgActionHtml?year=" + $("#year10").val() + "&courseid=" + $("#courseID10").val();
                };
            });
        }

        function btn10_max() {
            var $btn4 = $("input[name=btn10_max]");
            $btn4.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryGradeCidTest.action",
                        data: {
                            gradeID: $("#year10").val(),
                            courseID: $("#courseID10").val()
                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    window.location.href = "EchartsYearCourseMaxActionHtml?year=" + $("#year10").val() + "&courseid=" + $("#courseID10").val();
                };
            });
        }

        function btn10_min() {
            var $btn4 = $("input[name=btn10_min]");
            $btn4.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryGradeCidTest.action",
                        data: {
                            gradeID: $("#year10").val(),
                            courseID: $("#courseID10").val()
                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    window.location.href = "EchartsYearCourseMinActionHtml?year=" + $("#year10").val() + "&courseid=" + $("#courseID10").val();
                };
            });
        }

        function btn10_sort() {
            var $btn4 = $("input[name=btn10_sort]");
            $btn4.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryGradeCidTest.action",
                        data: {
                            gradeID: $("#year10").val(),
                            courseID: $("#courseID10").val()
                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    window.location.href = "EchartsPersonYearCourseActionHtml?year=" + $("#year10").val() + "&courseid=" + $("#courseID10").val();
                };
            });
        }

        function btn11() {
            var $btn1 = $("input[name=btn11]");
            $btn1.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryStuTest.action",
                        data: {
                            stuXueHao: $("#sxh1").val(),

                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    window.location.href = "EchartsLineCourseTotalHtml?stuid=" + $("#sxh1").val();
                };
            });
        }

        function btn12() {
            var $btn4 = $("input[name=btn12]");
            $btn4.bind("click", function () {
                $.ajax(
                    {
                        type: "get",
                        url: "scoreQueryGradeCidTest.action",
                        data: {
                            gradeID: $("#year12").val()
                        },
                        dataType: "json",
                        success: login_Result,
                        error: function () {
                            alert("系统异常，请稍后重试！");
                        }
                    }
                );

                function login_Result(data) {
                    window.location.href = "EchartsPersonTotalYearActionHtml?year=" + $("#year12").val();
                };
            });
        }

        $(function () {
            $("#accordion").accordion();
            btn1();
            btn2();
            btn3();
            btn4();
            btn5();
            btn6();
            btn10_avg();
            btn10_max();
            btn10_min();
            btn10_sort();
            btn11();
            btn12();
        });
    </script>
    <style type="text/css">
        body {
            font: 72.5% "Trebuchet MS", sans-serif;
            margin: 50px;
            background-color: #7ecef4;
        }

        .box {
            padding: 8px;
        }

        .frame {
            height: 435px;
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
            border-top: 1px solid #C1DAD7;
            border-left: 1px solid #C1DAD7;
            border-right: 1px solid #C1DAD7;
            border-bottom: 1px solid #C1DAD7;
            padding: 6px 6px 6px 12px;
            font: bold 12px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
            color: #797268;

        }

        .datalist tr.altrow {
            background-color: #c7e5ff; /* 隔行变色 */
        }
    </style>
</head>

<body>
<jsp:include page="scoreServiceNavigation.jsp">
    <jsp:param name="menuChildCode" value="41"></jsp:param>
</jsp:include>
<div id="accordion">
    <h3>成绩管理——成绩查询和分析</h3>
    <div align="left" class="frame">

        <form action="scoreQueryResultSecond.action" method="post" id="myForm2">
            <table class="datalist table">
                <tr>
                    <td>学号：<input type="text" name="stuXueHao" id="sxh2"/>&nbsp;&nbsp;&nbsp;课程：<select name="courseID"
                                                                                                       id="courseID2">
                        <s:iterator value="courses">
                            <option value='<s:property value="bianHao"/>'><s:property value="name"/></option>
                        </s:iterator>
                    </select>&nbsp;&nbsp;&nbsp;<input type="button" name="btn2" value="查询-分析-单个学科的分数变化"/></td>
                </tr>
            </table>
        </form>
        <form action="scoreQueryResult.action" method="post" id="myForm1">
            <table class="datalist table">
                <tr>
                    <td>学号：<input id="sxh1" type="text" name="stuXueHao"/>&nbsp;&nbsp;&nbsp;
                        <input type="button"
                               name="btn1"
                               value="查询-分析-全部学科的分数变化"/>
                        <input type="button"
                               name="btn11"
                               value="查询-分析-总分变化"/>

                    </td>
                </tr>
            </table>
        </form>
        <%--班级-单科分析--%>
        <form action="scoreQueryResultThird.action" method="post" id="myForm4">
            <table class="datalist table">
                <tr>
                    <td>班级：<select name="gradeID" id="gradeID4">
                        <s:iterator value="grades">
                            <option value='<s:property value="bianHao" />'><s:property value="year"/>届（<s:property
                                    value="classID"/>）班
                            </option>
                        </s:iterator>
                    </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课程：<select name="courseID" id="courseID4">
                        <s:iterator value="courses">
                            <option value='<s:property value="bianHao"/>'><s:property value="name"/></option>
                        </s:iterator>
                    </select>&nbsp;&nbsp;&nbsp;<input type="button" name="btn4" value="查询--班级单科整体分析"/>
                    </td>
                </tr>
            </table>
        </form>
        <%--6班级分析--%>
        <form action="scoreQueryResultSix.action" method="post" id="myForm6">
            <table class="datalist table">
                <tr>
                    <td>班级：<select name="gradeID" id="gradeID6">
                        <s:iterator value="grades">
                            <option value='<s:property value="bianHao" />'><s:property value="year"/>届（<s:property
                                    value="classID"/>）班
                            </option>
                        </s:iterator>
                    </select>&nbsp;&nbsp;&nbsp;<input type="button" name="btn6" value="查询-分析-班级整体分析"/>
                    </td>
                </tr>
            </table>
        </form>
        <form action="scoreQueryResultFive.action" method="post" id="myForm5">
            <table class="datalist table">
                <tr>
                    <td>班级：<select name="gradeID" id="gradeID5">
                        <s:iterator value="grades">
                            <option value='<s:property value="bianHao" />'><s:property value="year"/>届（<s:property
                                    value="classID"/>）班
                            </option>
                        </s:iterator>
                    </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课程：<select name="courseID" id="courseID5">
                        <s:iterator value="courses">
                            <option value='<s:property value="bianHao"/>'><s:property value="name"/></option>
                        </s:iterator>
                    </select>&nbsp;&nbsp;&nbsp;学期：<select name="xueqi" id="xueqi5">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                    </select>&nbsp;&nbsp;&nbsp;类型：<select name="examType" id="examType5">
                        <option value="期中">期中</option>
                        <option value="期末">期末</option>
                    </select>&nbsp;&nbsp;&nbsp;<input type="button" name="btn5" value="查询-分析-单场考试"/></td>
                </tr>
            </table>
        </form>
        <%--班级-单科分析--%>
        <form action="EchartsYearCourseAvgActionHtml" method="get" id="myForm10">
            <table class="datalist table">
                <tr>
                    <td>年级：<select name="year" id="year10">
                        <s:iterator value="grades">
                            <option value='<s:property value="year"/>'><s:property value="year"/>届</option>
                        </s:iterator>
                    </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课程：<select name="courseID" id="courseID10">
                        <s:iterator value="courses">
                            <option value='<s:property value="bianHao"/>'><s:property value="name"/></option>
                        </s:iterator>
                    </select>&nbsp;&nbsp;&nbsp;<input type="button" name="btn10_avg" value="查询-分析-平均分排名"/>
                        </select>&nbsp;&nbsp;&nbsp;<input type="button" name="btn10_max" value="查询-分析-最高分排名"/>
                        </select>&nbsp;&nbsp;&nbsp;<input type="button" name="btn10_min" value="查询-分析-最低分排名"/>
                        </select>&nbsp;&nbsp;&nbsp;<input type="button" name="btn10_sort" value="查询-分析-单科排名"/>
                    </td>
                </tr>
            </table>
        </form>
        <%--班级-单科分析--%>
        <%--<form action="EchartsYearCourseAvgActionHtml" method="get" id="myForm12">--%>
        <%--<table class="datalist table">--%>
        <%--<tr>--%>
        <%--<td>年级：<select name="year" id="year12">--%>
        <%--<s:iterator value="grades">--%>
        <%--<option value='<s:property value="year"/>'><s:property value="year"/>届</option>--%>
        <%--</s:iterator>--%>
        <%--</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp:--%>
        <%--nbsp;&nbsp;&nbsp;<input type="button" name="btn12" value="查询-分析-总分排名"/>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</table>--%>
        <%--</form>--%>
    </div>
</div>
</body>
</html>
