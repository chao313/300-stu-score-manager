<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <script>
        $(function () {
            $("#gradeService").tabs();
            $(".button").button();
        });
    </script>
</head>
<body>
<jsp:include page="navigation.jsp">
    <jsp:param name="menuCode" value="3"></jsp:param>
</jsp:include>
<div id="gradeService">
    <div id="gradeService-1">
        <a href="gradeSetUp.action"><button class="button"
                <%
                    String menuChildCode=request.getParameter("menuChildCode");
                    if (menuChildCode != null && "30".equals(menuChildCode)) {
                %>
                                            style="border: #637fff 3px solid"
                <%
                    }
                %>
        >班级信息添加</button></a>&nbsp;&nbsp;
        <a href="gradeTeachingChose.action"><button class="button"
                <%
                    if (menuChildCode != null && "31".equals(menuChildCode)) {
                %>
                                                    style="border: #637fff 3px solid"
                <%
                    }
                %>
        >班级教学安排</button></a>&nbsp;&nbsp;
        <a href="gradeAll.action"><button class="button"
                <%
                    if (menuChildCode != null && "32".equals(menuChildCode)) {
                %>
                                          style="border: #637fff 3px solid"
                <%
                    }
                %>
        >班级信息删除</button></a>&nbsp;&nbsp;
    </div>
</div>
</body>
</html>
