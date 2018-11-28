<%--
  Created by IntelliJ IDEA.
  User: longdk
  Date: 11/28/18
  Time: 8:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <%!
        Map<String,String> dic = new HashMap<>();
    %>

    <%
        dic.put("hello","Xin Chao");
        dic.put("how","The nao");
        dic.put("book","Sach");
        dic.put("computer","May tinh");

        String search = request.getParameter("search");

        String result = dic.get(search);
        if (result != null){
            out.println("Word: " + search);
            out.println("Result: " + result);
        }else {
            out.println("Not found");
        }
    %>

</body>
</html>
