<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: R1cro's Zenbook
  Date: 29.01.2016
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<t:template>
  <c:if test="${!empty persons}">
    <table border="1" class="person-list-table">
      <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Nickname</th>
        <th>&nbsp;</th>
      </tr>
      <c:forEach items="${persons}" var="person">
        <tr>
          <td>${person.name}</td>
          <td>${person.age}</td>
          <td>${person.nickname}</td>
         <td><a href="javascript:SMVC.deletePerson(${person.id})">Delete</a></td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
  <br>
  <a href="addPerson">Add person to Database</a>
  </br>
</t:template>

