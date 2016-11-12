<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <script>
        $(function () {
            $("#teacherService").tabs();
            $(".button").button();
        });
    </script>
</head>
<body>
<jsp:include page="navigation.jsp">
    <jsp:param name="menuCode" value="1"></jsp:param>
</jsp:include>
<div id="teacherService">
    <div id="teacherService-1">
        <a href="teacherForm.action"><button class="button"
                <%
                    String menuChildCode=request.getParameter("menuChildCode");
                    if (menuChildCode != null && "10".equals(menuChildCode)) {
                %>
                                             style="border: #637fff 3px solid"
                <%
                    }
                %>
        >教师信息添加</button></a>&nbsp;&nbsp;
        <a href="showAllTeacher.action"><button class="button"
                <%
                    if (menuChildCode != null && "11".equals(menuChildCode)) {
                %>
                                                style="border: #637fff 3px solid"
                <%
                    }
                %>
        >教师信息编辑</button></a>&nbsp;&nbsp;
        <a href="teacherSearch.action"><button class="button"
                <%
                    if (menuChildCode != null && "12".equals(menuChildCode)) {
                %>
                                               style="border: #637fff 3px solid"
                <%
                    }
                %>
        >教师信息查询</button></a>&nbsp;&nbsp;
    </div>
</div>
</body>
</html>
