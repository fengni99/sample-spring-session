<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <title>Session Attributes</title>
    
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <style type="text/css">
        body {
            padding: 1em;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Description</h1>
        <p>This application demonstrates how to use a Redis instance to back your session. Notice that there is no JSESSIONID cookie. We are also able to customize the way of identifying what the requested session id is.</p>

        <h1>Try it</h1>

        <form class="form-inline" role="form" action="./session" method="post">
            <label for="attributeName">Attribute Name</label>
            <input id="attributeName" type="text" name="attributeName">
            <label for="attributeValue">Attribute Value</label>
            <input id="attributeValue" type="text" name="attributeValue">
            <input type="submit" value="Set Attribute">
        </form>

        <hr>

        <table class="table table-striped">
            <thead>
            <c:forEach items="${sessionScope}" var="attr">
	            <tr>
	                <th>${attr.key }</th>
	                <th>${attr.value }</th>
	            </tr>	
            </c:forEach>
            
            </thead>
            <tbody>
            
            </tbody>
        </table>
    </div>


</body>
</html>
