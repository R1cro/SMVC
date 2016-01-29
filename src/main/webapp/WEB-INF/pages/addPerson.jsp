<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 29.01.2016
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Person</title>
</head>
<body>
<br>
<form:form method="post" action="addPerson" commandName="person">
  <table align="center">
    <tr>
      <td>
        <form:label path="name">
          Name
        </form:label>
      </td>
      <td>
        <form:input path="name"></form:input>
      </td>
      <td>
        <form:errors path="name"></form:errors>
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="age">
          Age
        </form:label>
      </td>
      <td>
        <form:input path="age"></form:input>
      </td>
      <td>
        <form:errors path="age"></form:errors>
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="nickname">
          Nickname
        </form:label>
      </td>
      <td>
        <form:input path="nickname"></form:input>
      </td>
      <td>
        <form:errors path="nickname"></form:errors>
      </td>
    </tr>
    <br>
    <tr>
      <td colspan="2"><input type="submit" value="Add Person" /></td>
    </tr>
    </br>
  </table>
</form:form>
</br>
</body>
</html>
