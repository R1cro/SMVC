<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
        <sec:authorize access="hasRole('admin')">
        <th>&nbsp;</th>
        </sec:authorize>
      </tr>
      <c:forEach items="${persons}" var="person">
        <tr>
          <td>${person.name}</td>
          <td>${person.age}</td>
          <td>${person.nickname}</td>
          <sec:authorize access="hasRole('admin')">
             <td><a href="javascript:SMVC.deletePerson(${person.id})">Delete</a></td>
          </sec:authorize>
        </tr>
      </c:forEach>
    </table>
  </c:if>
  <sec:authorize access="isAuthenticated()">
    <br>
    <a href="addPerson">Add Person to Database</a>
    </br>
  </sec:authorize>
</t:template>

