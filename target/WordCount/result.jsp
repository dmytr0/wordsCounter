<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="counter" class="xyz.dimonick.Service.ConterService" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <title>Words counter</title>
    <meta charset="utf-8">
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" type="text/css" />


    <jsp:setProperty name="counter" property="destinationText"  value="${requestScope.textIn}" />

    <c:set var="table" value="${counter.resultTable}" />


</head>
    <body>

        <div class="container">
            <div class="content">
                <div class="data">
                    <table border="2" cols="2" width="250">

                        <c:forEach var="row" items="${table}">
                            <tr>
                                <td>${row.key}</td>
                                <td>${row.value}</td>
                            </tr>
                        </c:forEach>

                    </table>
                </div>

                <div class="data">
                    <form action="/index">
                        <input class="button"  type="submit" value="Go Back">
                    </form>
                </div>


            </div> <!-- end content -->
        </div> <!-- end conteiner -->
    </body>
</html>