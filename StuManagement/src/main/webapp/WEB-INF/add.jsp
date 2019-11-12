<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加学员</title>

    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>

    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
    <script src="https://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var $sun = '${param.num}';
            $("#form").submit(function () {
                var name=$("#name").val();
                var gender=$("#gender").val();
                var age=$("#age").val();
                var email=$("#email").val();
                var telephone=$("#telephone").val();
                var classesId=$("#classesId").val();

                if (name==''||name==null){
                    alert("姓名不能为空！");
                    return false;
                }
                if (gender==''||gender==null){
                    alert("性别不能为空！");
                    return false;
                }
                if (age==''||age==null){
                    alert("年龄不能为空！");
                    return false;
                }
                if (email != '') {//判断
                    var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
                    if (!reg.test(email)) {
                        alert('邮箱格式不正确，请重新填写!');
                        return false;
                    }
                }
                if (email==''||email==null){
                    alert("email不能为空！");
                    return false;
                }
                if (telephone==''||telephone==null){
                    alert("电话不能为空！");
                    return false;
                }
                if (classesId==0){
                    alert("请选择班级");
                    return false;
                }
                return true;
            });
        })
    </script>
</head>
<body>
<form action="/stu/addlist.html?falg=${falg}" method="post" id="form">
    <div>
        <div align="center"><h3 style="color: red">学员信息添加</h3></div>
    </div>
    <table border="1" align="center">
        <tr>
            <td style="background-color: darkgray">姓名</td>
            <td><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
            <td style="background-color: darkgray">性别</td>
            <td><input type="text" name="gender" id="gender"></td>
        </tr>
        <tr>
            <td style="background-color: darkgray">年龄</td>
            <td><input type="text" name="age" id="age"></td>
        </tr>
        <tr>
            <td style="background-color: darkgray">电话</td>
            <td><input type="text" name="telephone" id="telephone"></td>
        </tr>
        <tr>
            <td style="background-color: darkgray">email</td>
            <td><input type="text" name="email" id="email"></td>
        </tr>
        <tr>
            <td style="background-color: darkgray">班级</td>
            <td><select name="classId" id="classesId">
                <option value="0">--请选择--</option>
                <c:forEach var="classes" items="${classesList}" varStatus="status">
                    <option value="${classes.id}">${classes.name}</option>
                </c:forEach>
            </select>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" onclick="javascript:lo" value="提交" >
                <input type="button" onclick="javascript:history.back(-1)" value="返回">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
