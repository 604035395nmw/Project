
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学员信息</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>

    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
    <script src="https://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
    <script type="text/javascript">
       $(function () {
           $("th:gt(0)").css("background-color","#CCBBA9")
           $("tr:odd").css("background-color","darkgray")
       })


    </script>
</head>
<body>
<div>
<div align="center" style="color: indianred">
    学员信息列表
</div>
<table align="center" border="1">
    <tr>
        <th align="right" colspan="7"><a href="/stu/add.html">添加学员</a></th>
    </tr>
    <tr id="ss">
        <th>编号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>电话</th>
        <th>email</th>
        <th>班级</th>
    </tr>

    <c:forEach var="stu" items="${studentList}" varStatus="status">
    <tr>
        <td>${stu.id}</td>
        <td>${stu.name}</td>
        <td>${stu.gender}</td>
        <td>${stu.age}</td>
        <td>${stu.telephone}</td>
        <td>${stu.email}</td>
        <td><c:if test="${classesList != null }">
            <c:forEach var="classes" items="${classesList}">
               <c:if test="${classes.id == stu.classId }">
                       ${classes.name}
               </c:if>
            </c:forEach>
        </c:if></td>
    </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
