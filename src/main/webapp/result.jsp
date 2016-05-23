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
                <div class="images">
                    <img class="help" width="20" height="20" src="images/help.png" alt="Help" title="The application counts the number of words in the text is repeated two or more times"></p>
                </div>
                <div class="data">
                    <c:if test="${not empty table}">
                        <table border="2" cols="2" width="250">

                            <c:forEach var="row" items="${table}">
                                <tr>
                                    <td>${row.key}</td>
                                    <td>${row.value}</td>
                                </tr>
                            </c:forEach>

                        </table>
                    </c:if>
                    <c:if test="${empty table}">
                        <c:out value="No repeated words!" />
                    </c:if>
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