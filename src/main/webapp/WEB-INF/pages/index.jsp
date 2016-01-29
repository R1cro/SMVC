<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: R1cro's Zenbook
  Date: 29.01.2016
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Person List</title>
</head>
<body>
<div>
  <h1>Contact List</h1>
  <c:if test="${!empty persons}">
    <table>
      <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Nickname</th>
      </tr>
      <c:forEach items="${persons}" var="person">
        <tr>
          <td>${person.name}</td>
          <td>${person.age}</td>
          <td>${person.nickname}</td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
</div>
</body>
</html>